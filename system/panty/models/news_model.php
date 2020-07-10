<?php
/**
 * news_model.php
 *
 * Page intégrant les requêtes niveau news
 *
 * @package		Panty
 * @author		Ramlethal
 */
class News_Model extends TinyMVC_Model
{
	function get_news()
	{
		$this->db->query('select * from panty_news ORDER BY id DESC LIMIT 0,5');
		$array_news = array();
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_news[$i]['id']      = $row['id'];
			$array_news[$i]['title']   = htmlentities($row['title'], ENT_QUOTES, "UTF-8");
			$array_news[$i]['content'] = $row['content'];
			$array_news[$i]['author']  = htmlentities($row['author'], ENT_QUOTES, "UTF-8");
			$array_news[$i]['type']    = $row['type'];
			$i++;
		} //$row = $this->db->next()
		return $array_news;
	}
	function view($id)
	{
		if ($this->db->query('select COUNT(*) from panty_news where id=?', array(
			$id
		)) == 1):
			return $this->db->query_one('select * from panty_news where id=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
	function get_comments($id)
	{
		if ($this->db->query('select COUNT(*) from panty_news where id=?', array(
			$id
		)) == 1):
			$this->db->query('select * from panty_comments where news_id=? ORDER BY id DESC ', array(
				$id
			));
			$array_comments = array();
			$i              = 1;
			while ($row = $this->db->next()) {
				$array_comments[$i]['id']      = $row['id'];
				$array_comments[$i]['author']  = htmlentities($row['author'], ENT_QUOTES, "UTF-8");
				$array_comments[$i]['content'] = $row['content'];
				$i++;
			} //$row = $this->db->next()
			return $array_comments;
		else:
			return FALSE;
		endif;
	}
	function add_comment($id, $message, $user)
	{
		return $this->db->insert('panty_comments', array(
			'news_id' => $id,
			'author' => $user,
			'content' => strip_tags($message, '<br><br />')
		));
	}
	function delete_comment($id)
	{
		if ($this->db->query('select COUNT(*) from panty_comments where id=?', array(
			$id
		)) == 1):
			return $this->db->query('delete from panty_comments where id=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
	function delete_new($id)
	{
		if ($this->db->query('select COUNT(*) from panty_news where id=?', array(
			$id
		)) == 1):
			return $this->db->query('delete from panty_news where id=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
	function get_all_news()
	{
		$this->db->query('select * from panty_news ORDER BY id DESC');
		$array_news = array();
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_news[$i]['id']     = $row['id'];
			$array_news[$i]['title']  = htmlentities($row['title'], ENT_QUOTES, "UTF-8");
			$array_news[$i]['author'] = htmlentities($row['author'], ENT_QUOTES, "UTF-8");
			$array_news[$i]['type']   = $row['type'];
			$i++;
		} //$row = $this->db->next()
		return $array_news;
	}
	function get_note()
	{
		$this->db->query('select * from panty_note ORDER BY id DESC LIMIT 1');
		$array_note = array();
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_note[$i]['id']     = $row['id'];
			$array_note[$i]['content'] = $row['content'];
			$array_note[$i]['author'] = htmlentities($row['author'], ENT_QUOTES, "UTF-8");
			$i++;
		} //$row = $this->db->next()
		return $array_note;
	}
	function get_all_comments()
	{
		$this->db->query('select * from panty_comments ORDER BY id DESC');
		$array_comments = array();
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_comments[$i]['id']     	= $row['id'];
			$array_comments[$i]['news_id']  = $row['news_id'];
			$array_comments[$i]['author'] 	= htmlentities($row['author'], ENT_QUOTES, "UTF-8");
			$array_comments[$i]['content']	= $row['content'];
			$i++;
		} //$row = $this->db->next()
		return $array_comments;
	}
	function add_news($message, $title, $type, $user)
	{
		return $this->db->insert('panty_news', array(
			'author' => $user,
			'title' => $title,
			'type' => $type,
			'content' => $message
		));
	}
	function add_note($message, $user)
	{
		return $this->db->insert('panty_note', array(
			'author' => $user,
			'content' => $message
		));
	}
}