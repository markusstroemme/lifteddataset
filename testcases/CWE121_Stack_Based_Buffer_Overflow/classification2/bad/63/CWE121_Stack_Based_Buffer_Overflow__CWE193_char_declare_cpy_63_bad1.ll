define void @anon0() local_unnamed_addr {
dec_label_pc_2d8f6:
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store ptr %1, ptr %stack_var_-40, align 8
  store i8 0, ptr %1, align 8
  call void @anon1(ptr nonnull %stack_var_-40)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_2d941, label %dec_label_pc_2d93c

dec_label_pc_2d93c:                               ; preds = %dec_label_pc_2d8f6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d941

dec_label_pc_2d941:                               ; preds = %dec_label_pc_2d93c, %dec_label_pc_2d8f6
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_2d9a5:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %dataPtr to ptr
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %1, ptr nonnull %2)
  call void @printLine(ptr %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2da1b, label %dec_label_pc_2da16

dec_label_pc_2da16:                               ; preds = %dec_label_pc_2d9a5
  call void @__stack_chk_fail()
  br label %dec_label_pc_2da1b

dec_label_pc_2da1b:                               ; preds = %dec_label_pc_2da16, %dec_label_pc_2d9a5
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

