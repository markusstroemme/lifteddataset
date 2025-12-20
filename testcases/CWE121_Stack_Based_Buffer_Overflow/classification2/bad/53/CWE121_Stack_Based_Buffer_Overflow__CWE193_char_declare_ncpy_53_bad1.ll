define void @anon0() local_unnamed_addr {
dec_label_pc_3c99f:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_3c9ea, label %dec_label_pc_3c9e5

dec_label_pc_3c9e5:                               ; preds = %dec_label_pc_3c99f
  call void @__stack_chk_fail()
  br label %dec_label_pc_3c9ea

dec_label_pc_3c9ea:                               ; preds = %dec_label_pc_3c9e5, %dec_label_pc_3c99f
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_3ca4e:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_3ca8c:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_3caca:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = call ptr @strncpy(ptr %data, ptr nonnull %1, i32 %3)
  call void @printLine(ptr %data)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_3cb45, label %dec_label_pc_3cb40

dec_label_pc_3cb40:                               ; preds = %dec_label_pc_3caca
  call void @__stack_chk_fail()
  br label %dec_label_pc_3cb45

dec_label_pc_3cb45:                               ; preds = %dec_label_pc_3cb40, %dec_label_pc_3caca
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

