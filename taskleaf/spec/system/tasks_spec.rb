require 'rails_helper'

describe 'タスク管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      # ユーザーAを作っておく
      user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
      # 作成者がユーザーAであるタスクを作成しておく
      FactoryBot.create(:task, name: '最初のタスク', user: user_a)
    end

    context 'ユーザーAがログインしている時' do
      before do
        # ユーザーAでログインする
        visit login_path
        fill_in  'メールアドレス' , with: 'a@example.com'
                fill_in  'パスワード' , with: 'password'
        click_button 'ログインする'
      end

    context 'ユーザーBがログインしている時' do
      before do
        # ユーザーBを作成しておく
        # ユーザーBでログインする
      end

      it 'ユーザーAが作成したタスクが表示されない' do
        # ユーザーAが作成したいタスクの名称が画面上に表示されていないことを確認
      end

      it 'ユーザーAが作成したタスクが表示される' do
        # 作成済みのタスクの名称が画面上に表示されていることを確認
        expect(page).to have_content '最初のタスク'
      end
    end
  end
end