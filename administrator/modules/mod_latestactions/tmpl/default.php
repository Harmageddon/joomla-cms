<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  mod_latestactions
 *
 * @copyright   (C) 2018 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;

$now = Factory::getDate();
?>
<table class="table" id="<?php echo str_replace(' ', '', $module->title) . $module->id; ?>">
	<caption class="visually-hidden"><?php echo $module->title; ?></caption>
	<thead>
		<tr>
			<th scope="col" class="w-80"><?php echo Text::_('MOD_LATESTACTIONS_ACTION'); ?></th>
			<th scope="col" class="w-20"><?php echo Text::_('JDATE'); ?></th>
		</tr>
	</thead>
	<tbody>
		<?php if (count($list)) : ?>
		<?php foreach ($list as $i => $item) : ?>
		<tr>
			<td>
				<?php echo $item->message; ?>
			</td>
			<td>
				<?php echo HTMLHelper::_('date.relativeFormatted', $item->log_date, null, $now, Text::_('DATE_FORMAT_LC5')); ?>
			</td>
		</tr>
		<?php endforeach; ?>
		<?php else : ?>
		<tr>
			<td colspan="2">
				<?php echo Text::_('MOD_LATESTACTIONS_NO_MATCHING_RESULTS'); ?>
			</td>
		</tr>
		<?php endif; ?>
	</tbody>
</table>
