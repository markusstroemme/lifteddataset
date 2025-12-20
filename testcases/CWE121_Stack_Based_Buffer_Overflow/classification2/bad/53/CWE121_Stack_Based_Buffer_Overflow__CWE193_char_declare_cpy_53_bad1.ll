define void @anon0() local_unnamed_addr {
dec_label_pc_2d4ae:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_2d4f9, label %dec_label_pc_2d4f4

dec_label_pc_2d4f4:                               ; preds = %dec_label_pc_2d4ae
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d4f9

dec_label_pc_2d4f9:                               ; preds = %dec_label_pc_2d4f4, %dec_label_pc_2d4ae
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2d55d:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_2d59b:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_2d5d9:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call ptr @strcpy(ptr %data, ptr nonnull %1)
  call void @printLine(ptr %data)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_2d644, label %dec_label_pc_2d63f

dec_label_pc_2d63f:                               ; preds = %dec_label_pc_2d5d9
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d644

dec_label_pc_2d644:                               ; preds = %dec_label_pc_2d63f, %dec_label_pc_2d5d9
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

