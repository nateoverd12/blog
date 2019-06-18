<?php

namespace App\Service;

class Mailer
{
    private $mailer;
    private $environment;

    public function __construct(\Swift_Mailer $mailer, \Twig\Environment $environment)
    {
        $this->mailer = $mailer;
        $this->environment = $environment;
    }

    public function sendArticle(string $subject, string $title, string $slug): void
    {
        $message = (new \Swift_Message($subject))
                ->setFrom($_ENV['MAILER_FROM_ADDRESS'])
                ->setTo($_ENV['MAILER_FROM_ADDRESS'])
                ->setBody($this->environment->render('email/articleAdded.html.twig',
                                    ['title' => $title,
                                    'slug' => $slug ]),
                                    'text/html'
                );
        $this->mailer->send($message);
    }
} 