define void @anon0() local_unnamed_addr {
dec_label_pc_2df96:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  %2 = ptrtoint ptr %stack_var_-27 to i64
  call void @anon1(i64 %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_2dfe9, label %dec_label_pc_2dfe4

dec_label_pc_2dfe4:                               ; preds = %dec_label_pc_2df96
  call void @__stack_chk_fail()
  br label %dec_label_pc_2dfe9

dec_label_pc_2dfe9:                               ; preds = %dec_label_pc_2dfe4, %dec_label_pc_2df96
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_2e055:
  %stack_var_-27 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %0, ptr nonnull %2)
  call void @printLine(ptr %0)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_2e0c8, label %dec_label_pc_2e0c3

dec_label_pc_2e0c3:                               ; preds = %dec_label_pc_2e055
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e0c8

dec_label_pc_2e0c8:                               ; preds = %dec_label_pc_2e0c3, %dec_label_pc_2e055
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

