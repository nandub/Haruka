module.exports = {
    desc: "A short description",
    help: "A longer description of what the command does and how to use it.",
    usage: "<hello> [world]",
    aliases: ['ex', 'e'], // Aliases 'ex' and 'e'
    cooldown: 5, // 5 seconds
    hidden: true, // Hidden from help command
    ownerOnly: false, // Only a user in config.adminIds can use this
    guildOnly: true, // This can't be used in a DM
    requiredPermission: 'manageMessages', // You need manageMessages to use this
    task(bot, msg, suffix, config, settingsManager) { // Avaliable args
        if (suffix.startsWith('hello'))
            return bot.createMessage(msg.channel.id, suffix);
        return 'wrong usage'; // Send the correct usage to the user
    }
}
