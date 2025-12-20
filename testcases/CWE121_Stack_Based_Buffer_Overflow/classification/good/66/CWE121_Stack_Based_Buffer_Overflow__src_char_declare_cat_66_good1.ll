define void @anon1() local_unnamed_addr {
dec_label_pc_353b1:
  %stack_var_-168 = alloca i64, align 8
  %dataArray_-176 = alloca [5 x ptr], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-176, align 8
  %3 = bitcast ptr %dataArray_-176 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 49)
  %7 = add i64 %4, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-168 to ptr
  call void @anon0(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_35433, label %dec_label_pc_3542e

dec_label_pc_3542e:                               ; preds = %dec_label_pc_353b1
  call void @__stack_chk_fail()
  br label %dec_label_pc_35433

dec_label_pc_35433:                               ; preds = %dec_label_pc_3542e, %dec_label_pc_353b1
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_354e1:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @strcat(ptr nonnull %5, ptr %6)
  call void @printLine(ptr %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_35576, label %dec_label_pc_35571

dec_label_pc_35571:                               ; preds = %dec_label_pc_354e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_35576

dec_label_pc_35576:                               ; preds = %dec_label_pc_35571, %dec_label_pc_354e1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

