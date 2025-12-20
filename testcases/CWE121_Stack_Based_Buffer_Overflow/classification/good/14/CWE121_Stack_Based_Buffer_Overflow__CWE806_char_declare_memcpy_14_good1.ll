@global_var_91153 = external constant [21 x i8]
@global_var_b4074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_458af:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b4074, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_458f4, label %dec_label_pc_458e3

dec_label_pc_458e3:                               ; preds = %dec_label_pc_458af
  call void @printLine(ptr @global_var_91153)
  br label %dec_label_pc_4591b

dec_label_pc_458f4:                               ; preds = %dec_label_pc_458af
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_4591b

dec_label_pc_4591b:                               ; preds = %dec_label_pc_458f4, %dec_label_pc_458e3
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = call ptr @memcpy(ptr nonnull %stack_var_-184, ptr nonnull %stack_var_-120, i32 %8)
  call void @printLine(ptr nonnull %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_459b6, label %dec_label_pc_459b1

dec_label_pc_459b1:                               ; preds = %dec_label_pc_4591b
  call void @__stack_chk_fail()
  br label %dec_label_pc_459b6

dec_label_pc_459b6:                               ; preds = %dec_label_pc_459b1, %dec_label_pc_4591b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

