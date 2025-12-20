@global_var_fff = external global ptr
@global_var_90f46 = external constant [3 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_38591:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataPtr1_-120 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataPtr1_-120 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_385ea

dec_label_pc_385ea:                               ; preds = %dec_label_pc_385ea, %dec_label_pc_38591
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_38601, label %dec_label_pc_385ea

dec_label_pc_38601:                               ; preds = %dec_label_pc_385ea
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %dataPtr1_-120, align 8
  %7 = inttoptr i64 %5 to ptr
  %8 = call ptr @memset(ptr %7, i32 65, i32 99)
  %9 = add i64 %5, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  %11 = bitcast ptr %dataPtr1_-120 to ptr
  store i64 %5, ptr %11, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %12 = inttoptr i64 %5 to ptr
  %13 = call i32 @strlen(ptr %12)
  %14 = bitcast ptr %stack_var_-72 to ptr
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %14, i32 %13, ptr @global_var_90f46, ptr %12)
  call void @printLine(ptr %12)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_3870d, label %dec_label_pc_38708

dec_label_pc_38708:                               ; preds = %dec_label_pc_38601
  call void @__stack_chk_fail()
  br label %dec_label_pc_3870d

dec_label_pc_3870d:                               ; preds = %dec_label_pc_38708, %dec_label_pc_38601
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

