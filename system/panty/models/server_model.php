<?php
/**
 * server_model.php
 *
 * Page intégrant les requêtes niveau serveur
 *
 * @package		Panty
 * @author		Ramlethal
 */
class Server_Model extends TinyMVC_Model
{
	function get_top_pvm()
	{
		$array_perso = array();
		$this->db->query('select personnages.* from personnages, accounts WHERE personnages.account = accounts.guid AND accounts.level = 0 ORDER BY personnages.xp DESC LIMIT 0,50');
		$alignement = array(
			0 => '0',
			1 => '1',
			2 => '2',
			3 => '3'
		);
		$sexe       = array(
			0 => 'm',
			1 => 'f'
		);
		$classe     = array(
			1 => 'feca',
			2 => 'osa',
			3 => 'enu',
			4 => 'sram',
			5 => 'xel',
			6 => 'eca',
			7 => 'eni',
			8 => 'iop',
			9 => 'cra',
			10 => 'sadi',
			11 => 'sacri',
			12 => 'pand'
		);
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_perso[$i]['pos']        = $i;
			$array_perso[$i]['name']       = $row['name'];
			$array_perso[$i]['level']      = $row['level'];
			$array_perso[$i]['sexe']       = $sexe[$row['sexe']];
			$array_perso[$i]['class']      = $classe[$row['class']];
			$array_perso[$i]['account']    = $row['account'];
			$array_perso[$i]['alignement'] = $alignement[$row['alignement']];
			$array_perso[$i]['xp']         = $row['xp'];
			$i++;
		} //$row = $this->db->next()
		return $array_perso;
	}
	function get_top_pvm3()
	{
		$array_perso_pvm3 = array();
		$this->db->query('select personnages.* from personnages, accounts WHERE personnages.account = accounts.guid AND accounts.level = 0 ORDER BY personnages.xp DESC LIMIT 0,3');
		$alignement = array(
			0 => '0',
			1 => '1',
			2 => '2',
			3 => '3'
		);
		$sexe       = array(
			0 => 'm',
			1 => 'f'
		);
		$classe     = array(
			1 => 'feca',
			2 => 'osa',
			3 => 'enu',
			4 => 'sram',
			5 => 'xel',
			6 => 'eca',
			7 => 'eni',
			8 => 'iop',
			9 => 'cra',
			10 => 'sadi',
			11 => 'sacri',
			12 => 'pand'
		);
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_perso_pvm3[$i]['pos']        = $i;
			$array_perso_pvm3[$i]['name']       = $row['name'];
			$array_perso_pvm3[$i]['level']      = $row['level'];
			$array_perso_pvm3[$i]['sexe']       = $sexe[$row['sexe']];
			$array_perso_pvm3[$i]['class']      = $classe[$row['class']];
			$array_perso_pvm3[$i]['account']    = $row['account'];
			$array_perso_pvm3[$i]['alignement'] = $alignement[$row['alignement']];
			$array_perso_pvm3[$i]['xp']         = $row['xp'];
			$i++;
		} //$row = $this->db->next()
		return $array_perso_pvm3;
	}
	function get_top_pvp()
	{
		$array_perso = array();
		$this->db->query('select personnages.* from personnages, accounts WHERE personnages.account = accounts.guid AND accounts.level = 0 ORDER BY honor DESC LIMIT 0,50');
		$alignement = array(
			0 => '0',
			1 => '1',
			2 => '2',
			3 => '3'
		);
		$sexe       = array(
			0 => 'm',
			1 => 'f'
		);
		$classe     = array(
			1 => 'feca',
			2 => 'osa',
			3 => 'enu',
			4 => 'sram',
			5 => 'xel',
			6 => 'eca',
			7 => 'eni',
			8 => 'iop',
			9 => 'cra',
			10 => 'sadi',
			11 => 'sacri',
			12 => 'pand'
		);
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_perso[$i]['pos']        = $i;
			$array_perso[$i]['name']       = $row['name'];
			$array_perso[$i]['level']      = $row['level'];
			$array_perso[$i]['sexe']       = $sexe[$row['sexe']];
			$array_perso[$i]['class']      = $classe[$row['class']];
			$array_perso[$i]['account']    = $row['account'];
			$array_perso[$i]['alignement'] = $alignement[$row['alignement']];
			$array_perso[$i]['honor']      = $row['honor'];
			$i++;
		} //$row = $this->db->next()
		return $array_perso;
	}
	function get_top_pvp3()
	{
		$array_perso_pvp3 = array();
		$this->db->query('select personnages.* from personnages, accounts WHERE personnages.account = accounts.guid AND accounts.level = 0 ORDER BY honor DESC LIMIT 0,3');
		$alignement = array(
			0 => '0',
			1 => '1',
			2 => '2',
			3 => '3'
		);
		$sexe       = array(
			0 => 'm',
			1 => 'f'
		);
		$classe     = array(
			1 => 'feca',
			2 => 'osa',
			3 => 'enu',
			4 => 'sram',
			5 => 'xel',
			6 => 'eca',
			7 => 'eni',
			8 => 'iop',
			9 => 'cra',
			10 => 'sadi',
			11 => 'sacri',
			12 => 'pand'
		);
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_perso_pvp3[$i]['pos']        = $i;
			$array_perso_pvp3[$i]['name']       = $row['name'];
			$array_perso_pvp3[$i]['level']      = $row['level'];
			$array_perso_pvp3[$i]['sexe']       = $sexe[$row['sexe']];
			$array_perso_pvp3[$i]['class']      = $classe[$row['class']];
			$array_perso_pvp3[$i]['account']    = $row['account'];
			$array_perso_pvp3[$i]['alignement'] = $alignement[$row['alignement']];
			$array_perso_pvp3[$i]['honor']      = $row['honor'];
			$i++;
		} //$row = $this->db->next()
		return $array_perso_pvp3;
	}
	function get_top_guilde()
	{
		$array_guilde = array();
		$this->db->query('select * from guilds ORDER BY xp DESC LIMIT 0,50');
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_guilde[$i]['pos']        = $i;
			$array_guilde[$i]['name']       = $row['name'];
			$array_guilde[$i]['lvl']      = $row['lvl'];
			$array_guilde[$i]['xp']       = $row['xp'];
			$i++;
		} //$row = $this->db->next()
		return $array_guilde;
	}
	function get_top_guilde3()
	{
		$array_guilde3 = array();
		$this->db->query('select * from guilds ORDER BY xp DESC LIMIT 0,3');
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_guilde3[$i]['pos']        = $i;
			$array_guilde3[$i]['name']       = $row['name'];
			$array_guilde3[$i]['lvl']      = $row['lvl'];
			$array_guilde3[$i]['xp']       = $row['xp'];
			$i++;
		} //$row = $this->db->next()
		return $array_guilde3;
	}
	function get_top_vote()
	{
		$array_vote = array();
		$this->db->query('select * from accounts ORDER BY votes DESC LIMIT 0,50');
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_vote[$i]['pos']         = $i;
			$array_vote[$i]['id']          = $row['guid'];
			$array_vote[$i]['pseudo']      = $row['pseudo'];
			$array_vote[$i]['votes']       = $row['votes'];
			$i++;
		} //$row = $this->db->next()
		return $array_vote;
	}
	function get_top_vote3()
	{
		$array_vote3 = array();
		$this->db->query('select * from accounts ORDER BY votes DESC LIMIT 0,3');
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_vote3[$i]['pos']         = $i;
			$array_vote3[$i]['id']          = $row['guid'];
			$array_vote3[$i]['pseudo']      = $row['pseudo'];
			$array_vote3[$i]['votes']       = $row['votes'];
			$i++;
		} //$row = $this->db->next()
		return $array_vote3;
	}
	function get_top3()
	{
		$this->db->query('select * from personnages ORDER BY xp DESC LIMIT 0,3');
		$array_perso = array();
		$i           = 1;
		while ($row = $this->db->next()) {
			$array_perso[$i]['pos']   = $i;
			$array_perso[$i]['name']  = $row['name'];
			$array_perso[$i]['level'] = $row['level'];
			$i++;
		} //$row = $this->db->next()
		return $array_perso;
	}
	function get_logged()
	{
		$query = $this->db->query_all('select * from accounts where logged=?', array(
			'1'
		));
		return $this->db->num_rows();
	}
	function get_accounts()
	{
		$query = $this->db->query_all('select * from accounts');
		return $this->db->num_rows();
	}
	function get_characters()
	{
		$query = $this->db->query_all('select * from personnages');
		return $this->db->num_rows();
	}
	function get_guilds()
	{
		$query = $this->db->query_all('select * from guilds');
		return $this->db->num_rows();
	}
	function get_staff()
	{
		$array_staff = array();
		$this->db->query('select * from accounts WHERE level>0 ORDER BY level DESC');
		$i = 1;
		while ($row = $this->db->next()) {
			switch ($row['level']) {
				case 1:
					$array_staff[$i]['rang'] = 'Animateur';
					break;
				case 2:
					$array_staff[$i]['rang'] = 'Animateur';
					break;
				case 3:
					$array_staff[$i]['rang'] = 'Mod&eacute;rateur';
					break;
				case 4:
					$array_staff[$i]['rang'] = 'Co-Administrateur';
					break;
				case 5:
					$array_staff[$i]['rang'] = 'Administrateur';
					break;
				default:
					$array_staff[$i]['rang'] = 'Non d&eacute;finit';
					break;
			} //$row['level']
			$array_staff[$i]['id']     = $row['guid'];
			$array_staff[$i]['pseudo'] = $row['pseudo'];
			$array_staff[$i]['mail']   = $row['email'];
			$array_staff[$i]['logged'] = $row['logged'];
			$i++;
		} //$row = $this->db->next()
		return $array_staff;
	}
	function get_bug()
	{
		$this->db->query('select * from panty_bug ORDER BY id DESC');
		$array_bug = array();
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_bug[$i]['id']      = $row['id'];
			$array_bug[$i]['title']   = htmlentities($row['title'], ENT_QUOTES, "UTF-8");
			$array_bug[$i]['content'] = $row['content'];
			$array_bug[$i]['author']  = htmlentities($row['author'], ENT_QUOTES, "UTF-8");
			$array_bug[$i]['type']    = $row['type'];
			$i++;
		} //$row = $this->db->next()
		return $array_bug;
	}
	function add_bug($message, $title, $type, $user)
	{
		return $this->db->insert('panty_bug', array(
			'author' => $user,
			'title' => $title,
			'type' => $type,
			'content' => strip_tags($message, '<br><br />')
		));
	}
	function delete_bug($id)
	{
		if ($this->db->query('select COUNT(*) from panty_bug where id=?', array(
			$id
		)) == 1):
			return $this->db->query('delete from panty_bug where id=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
}