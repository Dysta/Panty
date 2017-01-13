<?php
/**
 * user_model.php
 *
 * Page intégrant les requêtes niveau utilisateurs
 *
 * @package		Panty
 * @author		Ramlethal
 */
class User_Model extends TinyMVC_Model
{
	function get_user($username, $password)
	{
		if ($this->db->query('select COUNT(*) from accounts where account=? AND pass=?', array(
			$username,
			$password
		)) == 1):
			return $this->db->query_one('select * from accounts where account=? AND pass=?', array(
				$username,
				$password
			));
		else:
			return FALSE;
		endif;
	}
	function get_account_characters($account_id)
	{
		$this->db->select('*');
		$this->db->from('personnages');
		$this->db->where('account', $account_id);
		$this->db->orderby('xp DESC');
		$this->db->query();
		$array_perso = array();
		$alignement  = array(
			0 => '0',
			1 => '1',
			2 => '2',
			3 => '3'
		);
		$sexe        = array(
			0 => 'm',
			1 => 'f'
		);
		$classe      = array(
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
		$i           = 1;
		while ($row = $this->db->next()) {
			$array_perso[$i]['pos']        = $i;
			$array_perso[$i]['id']         = $row['guid'];
			$array_perso[$i]['name']       = $row['name'];
			$array_perso[$i]['level']      = $row['level'];
			$array_perso[$i]['sexe']       = $sexe[$row['sexe']];
			$array_perso[$i]['class']      = $classe[$row['class']];
			$array_perso[$i]['account']    = $row['account'];
			$array_perso[$i]['alignement'] = $alignement[$row['alignement']];
			$array_perso[$i]['honor']      = $row['honor'];
			$array_perso[$i]['xp']         = $row['xp'];
			$i++;
		} //$row = $this->db->next()
		return $array_perso;
	}
	function user_data($id)
	{
		if ($this->db->query('select COUNT(*) from accounts where guid=?', array(
			$id
		)) == 1):
			return $this->db->query_one('select * from accounts where guid=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
	function char_data($id)
	{
		if ($this->db->query('select COUNT(*) from personnages where guid=?', array(
			$id
		)) == 1):
			return $this->db->query_one('select * from personnages where guid=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
	function guild_char_data($id)
	{
		if ($this->db->query('select COUNT(*) from guild_members where guid=?', array(
			$id
		)) == 1):
			return $this->db->query_one('select * from guild_members where guid=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
	function guild_data($id)
	{
		if ($this->db->query('select COUNT(*) from guilds where id=?', array(
			$id
		)) == 1):
			return $this->db->query_one('select * from guilds where id=?', array(
				$id
			));
		else:
			return FALSE;
		endif;
	}
	function change_pass($id, $new_pass)
	{
		$this->db->where('guid', $id);
		return $this->db->update('accounts', array(
			'pass' => $new_pass
		));
	}
	function change_message($id, $message)
	{
		$this->db->where('guid', $id);
		return $this->db->update('accounts', array(
			'message' => htmlspecialchars($message)
		));
	}
	function change_gm($id, $new_gm)
	{
		$this->db->where('guid', $id);
		return $this->db->update('accounts', array(
			'level' => $new_gm
		));
	}
	function change_ip($id, $ip)
	{
		$this->db->where('guid', $id);
		return $this->db->update('accounts', array(
			'IPvote' => $ip
		));
	}
	function add_vote($id, $date_now, $tokens)
	{
		$datas  = $this->db->query_one('select * from accounts where guid=?', array(
			$id
		));
		$tokens = $datas['points'] + $tokens;
		$votes  = $datas['votes'] + 1;
		if(BONUS):
			switch($votes){
				case 10:
					$tokens = $tokens+BONUS_10;
					break;
				case 20:
					$tokens = $tokens+BONUS_20;
					break;
				case 30:
					$tokens = $tokens+BONUS_30;
					break;
				case 40:
					$tokens = $tokens+BONUS_40;
					break;
				case 50:
					$tokens = $tokens+BONUS_50;
					break;
				case 60:
					$tokens = $tokens+BONUS_60;
					break;
				case 70:
					$tokens = $tokens+BONUS_70;
					break;
				case 80:
					$tokens = $tokens+BONUS_80;
					break;
				case 90:
					$tokens = $tokens+BONUS_90;
					break;
				case 100:
					$tokens = $tokens+BONUS_100;
					break;
			}
		endif;
		$this->db->where('guid', $id);
		$this->db->update('accounts', array(
			'votes' => $votes,
			'points' => $tokens,
			'timevote' => $date_now
		));
		return $tokens;
	}	
	function already_used($username, $pseudo, $email)
	{
		$request     = $this->db->query('select * from accounts where account=? OR pseudo=? OR email=?', array(
			$username,
			$pseudo,
			$email
		));
		$request_num = $this->db->num_rows();
		if ($request_num == 1):
			return TRUE;
		else:
			return FALSE;
		endif;
	}
	function create_user($username, $password, $pseudo, $email, $quest, $answ)
	{
		return $this->db->insert('accounts', array(
			'account' => htmlspecialchars($username),
			'pass' => $password,
			'pseudo' => htmlspecialchars($pseudo),
			'email' => $email,
			'question' => htmlspecialchars($quest),
			'reponse' => $answ
		));
	}
	function token_add_log($type, $username, $item, $date)
	{
		return $this->db->insert('panty_log', array(
			'type' => 1,
			'account' => htmlspecialchars($username),
			'item' => 0,
			'date' => date('d-m-Y à H:i:s'),
		));
	}
	function add_tokens($id,$tokens)
	{
		$datas  = $this->db->query_one('select * from accounts where guid=?', array(
			$id
		));
		$tokens = $datas['points'] + $tokens;
		$this->db->where('guid', $id);
		$this->db->update('accounts', array(
			'points' => $tokens
		));
		return $tokens;
	}
	function is_vip($id)
	{
		$vip_datas = self::user_data($id);
		if ($vip_datas['vip']== 1):
			return TRUE;
		else:
			return FALSE;
		endif;
	}
	function set_vip($id)
	{
		$datas  = $this->db->query_one('select * from accounts where guid=?', array(
			$id
		));
		$tokens = $datas['points'] - VIP_TOKENS;
		$this->db->where('guid', $id);
		$this->db->update('accounts', array(
			'points' => $tokens,
			'vip' => 1
		));
		return $tokens;
	}
	function get_account_unban()
	{
		$array_account_unban = array();
		$this->db->query('select * from accounts WHERE banned = 0');
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_account_unban[$i]['id']      = $row['guid'];
			$array_account_unban[$i]['account'] = $row['account'];
			$array_account_unban[$i]['pseudo']  = $row['pseudo'];
			$array_account_unban[$i]['rang']      = $row['level'];
			$i++;
		} //$row = $this->db->next()
		return $array_account_unban;
	}
	function get_account_ban()
	{
		$array_account_ban = array();
		$this->db->query('select * from accounts WHERE banned = 1');
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_account_ban[$i]['id']      = $row['guid'];
			$array_account_ban[$i]['account'] = $row['account'];
			$array_account_ban[$i]['pseudo']  = $row['pseudo'];
			$array_account_ban[$i]['rang']    = $row['level'];
			$i++;
		} //$row = $this->db->next()
		return $array_account_ban;
	}
	function get_token_log()
	{
		$array_token_log = array();
		$this->db->query('select * from panty_log WHERE type = 1 ORDER by Date DESC LIMIT 50');
		$i          = 1;
		while ($row = $this->db->next()) {
			$array_token_log[$i]['account'] = $row['account'];
			$array_token_log[$i]['date']    = $row['date'];
			$i++;
		} //$row = $this->db->next()
		return $array_token_log;
	}
	function ban_account($id)
	{
		$this->db->where('guid', $id);
		return $this->db->update('accounts', array(
			'banned' => 1
		));
	}
	function unban_account($id)
	{
		$this->db->where('guid', $id);
		return $this->db->update('accounts', array(
			'banned' => 0
		));
	}
	function delete_character($id)
	{
		if ($this->db->query('delete from personnages where guid=?', array(
			$id
		)) == 1):
			return TRUE;
		else:
			return FALSE;
		endif;
	}
	function delete_account($id)
	{
		if ($this->db->query('delete from accounts where level < 3 && guid=?', array(
			$id
		)) == 1):
			return TRUE;
		else:
			return FALSE;
		endif;
	}
	function getIp()
	{
		if (isset($_SERVER['HTTP_CLIENT_IP'])) {
		return $_SERVER['HTTP_CLIENT_IP'];
		}
		// IP derrière un proxy
		elseif (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			return $_SERVER['HTTP_X_FORWARDED_FOR'];
		}
		// Sinon : IP normale
		else {
			return (isset($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : '');
		}
	}
	function raz_ip()
	{
		$this->db->query('UPDATE accounts SET IPvote = DEFAULT WHERE (UNIX_TIMESTAMP() - timevote) / 60 >= 180');
	}
	function already_used_ip($ip)
	{
		$request     = $this->db->query('select * from accounts where IPvote=?', array(
			$ip
		));
		$request_num = $this->db->num_rows();
		if ($request_num == 1):
			return TRUE;
		else:
			return FALSE;
		endif;
	}
}