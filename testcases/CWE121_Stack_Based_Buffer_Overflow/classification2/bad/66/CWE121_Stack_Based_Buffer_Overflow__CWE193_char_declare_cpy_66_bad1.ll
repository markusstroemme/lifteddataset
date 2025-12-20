define void @anon0() local_unnamed_addr {
dec_label_pc_2dde5:
  %stack_var_-72 = alloca i64, align 8
  %dataArray_-80 = alloca [5 x ptr], align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-80, align 8
  %3 = bitcast ptr %dataArray_-80 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-72 to ptr
  call void @anon1(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_2de38, label %dec_label_pc_2de33

dec_label_pc_2de33:                               ; preds = %dec_label_pc_2dde5
  call void @__stack_chk_fail()
  br label %dec_label_pc_2de38

dec_label_pc_2de38:                               ; preds = %dec_label_pc_2de33, %dec_label_pc_2dde5
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2dea4:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = bitcast ptr %stack_var_-27 to ptr
  %7 = call ptr @strcpy(ptr %5, ptr nonnull %6)
  call void @printLine(ptr %5)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_2df1b, label %dec_label_pc_2df16

dec_label_pc_2df16:                               ; preds = %dec_label_pc_2dea4
  call void @__stack_chk_fail()
  br label %dec_label_pc_2df1b

dec_label_pc_2df1b:                               ; preds = %dec_label_pc_2df16, %dec_label_pc_2dea4
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

