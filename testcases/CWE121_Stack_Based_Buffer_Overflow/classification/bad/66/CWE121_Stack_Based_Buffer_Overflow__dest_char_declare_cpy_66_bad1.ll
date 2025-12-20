define void @anon0() local_unnamed_addr {
dec_label_pc_1fb21:
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
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-168 to ptr
  call void @anon1(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1fb86, label %dec_label_pc_1fb81

dec_label_pc_1fb81:                               ; preds = %dec_label_pc_1fb21
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fb86

dec_label_pc_1fb86:                               ; preds = %dec_label_pc_1fb81, %dec_label_pc_1fb21
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1fc04:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strcpy(ptr %6, ptr nonnull %7)
  call void @printLine(ptr %6)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_1fc86, label %dec_label_pc_1fc81

dec_label_pc_1fc81:                               ; preds = %dec_label_pc_1fc04
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fc86

dec_label_pc_1fc86:                               ; preds = %dec_label_pc_1fc81, %dec_label_pc_1fc04
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

