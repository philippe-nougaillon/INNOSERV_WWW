require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase


  test "Visiter la page home" do
    visit root_path
  
    assert_selector "h1", text: "INNOSERV"
  end

  test "Visiter la page about" do
    visit about_path
  
    assert_selector "h1", text: "About INNOSERV"
  end

  test "Visiter la page contact" do
    visit contact_path
  
    assert_selector "h1", text: "Contact"
  end

  test "Visiter la page about via le bouton LEARN MORE" do
    visit root_path

    click_on "Learn More"

    assert_selector "h1", text: "About INNOSERV"
  end

  test "visiter la page home via la navbar" do
    visit about_path

    click_on "home-link"

    assert_selector "h1", text: "INNOSERV"
  end


  test "visiter l'ancre trailer via la navbar" do
    visit root_path

    click_on "trailer-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter l'ancre visual-examples via la navbar" do
    visit root_path

    click_on "visual-examples-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter l'ancre trailer via la navbar depuis une autre page" do
    visit about_path

    click_on "trailer-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter l'ancre visual-examples via la navbar depuis une autre page" do
    visit about_path

    click_on "visual-examples-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter la page about via la navbar" do
    visit root_path

    click_on "about-link"

    assert_selector "h1", text: "About INNOSERV"
  end

  test "visiter la page contact via la navbar" do
    visit root_path

    click_on "contact-link"

    assert_selector "h1", text: "Contact"
  end

  test "visiter la page home via le footer" do
    visit about_path

    click_on "home-footer-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter l'ancre trailer via le footer" do
    visit root_path

    click_on "trailer-footer-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter l'ancre visual-examples via le footer" do
    visit root_path

    click_on "visual-examples-footer-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter l'ancre trailer via le footer depuis une autre page" do
    visit about_path

    click_on "trailer-footer-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter l'ancre visual-examples via le footer depuis une autre page" do
    visit about_path

    click_on "visual-examples-footer-link"

    assert_selector "h1", text: "INNOSERV"
  end

  test "visiter la page about via le footer" do
    visit root_path

    click_on "about-footer-link"

    assert_selector "h1", text: "About INNOSERV"
  end

  test "visiter la page contact via le footer" do
    visit root_path

    click_on "contact-footer-link"

    assert_selector "h1", text: "Contact"
  end
  
  test "visiter un projet" do
    visit root_path

    click_on "Center against human trafficking"

    assert_selector "h1", text: "Center against human trafficking"
  end

  test "envoyer un formulaire" do
    visit contact_path

    fill_in "email", with:"test@gmail.com"
    fill_in "subject", with:"MySubject"
    fill_in "content", with:"MyContent"

    click_on "Submit"

    assert_text "Your form has been submitted."
  end

  test "envoyer un mauvais formulaire" do
    visit contact_path

    fill_in "email", with:"test.com"
    fill_in "subject", with:"MySubject"
    fill_in "content", with:"MyContent"

    click_on "Submit"

    assert_text "This email is invalid"
  end

  test "cliquer sur le bouton cordis-europa" do
    visit root_path

    click_on "cordis-europa"
  end

  # test "cliquer sur le bouton facebook" do
  #   visit root_path

  #   click_on "facebook-link"
  # end

  # test "cliquer sur le bouton twitter" do
  #   visit root_path

  #   click_on "twitter-link"
  # end

  # test "cliquer sur le bouton youtube" do
  #   visit root_path

  #   click_on "youtube-link"
  # end

  test "Affichage de tous les projets" do
    visit root_path
  
    page.assert_no_selector('article', count: 4)
  end
end


# tester que les ancre scroll bien (peut-être pas possible)
# vérifier que tous les projets s'affichent
# tester les réseaux dans le footer