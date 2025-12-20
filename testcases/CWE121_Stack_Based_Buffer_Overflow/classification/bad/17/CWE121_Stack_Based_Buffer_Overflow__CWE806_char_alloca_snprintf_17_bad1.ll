@global_var_fff = external global ptr
@global_var_90f0d = external constant [3 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_373b2:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_373fb

dec_label_pc_373fb:                               ; preds = %dec_label_pc_373fb, %dec_label_pc_373b2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3748b, label %dec_label_pc_373fb

dec_label_pc_3748b:                               ; preds = %dec_label_pc_373fb
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  %9 = call ptr @memset(ptr %6, i32 65, i32 99)
  store i8 0, ptr %8, align 1
  %10 = inttoptr i64 %5 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = bitcast ptr %stack_var_-72 to ptr
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %12, i32 %11, ptr @global_var_90f0d, ptr %10)
  call void @printLine(ptr %10)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_37510, label %dec_label_pc_3750b

dec_label_pc_3750b:                               ; preds = %dec_label_pc_3748b
  call void @__stack_chk_fail()
  br label %dec_label_pc_37510

dec_label_pc_37510:                               ; preds = %dec_label_pc_3750b, %dec_label_pc_3748b
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

