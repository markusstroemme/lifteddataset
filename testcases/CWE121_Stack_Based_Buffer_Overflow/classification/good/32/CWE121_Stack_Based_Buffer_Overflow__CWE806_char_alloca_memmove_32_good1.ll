@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1f42f:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataPtr1_-120 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataPtr1_-120 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1f488

dec_label_pc_1f488:                               ; preds = %dec_label_pc_1f488, %dec_label_pc_1f42f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1f49f, label %dec_label_pc_1f488

dec_label_pc_1f49f:                               ; preds = %dec_label_pc_1f488
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %dataPtr1_-120, align 8
  %7 = inttoptr i64 %5 to ptr
  %8 = call ptr @memset(ptr %7, i32 65, i32 49)
  %9 = add i64 %5, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  %11 = bitcast ptr %dataPtr1_-120 to ptr
  store i64 %5, ptr %11, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %12 = inttoptr i64 %5 to ptr
  %13 = call i32 @strlen(ptr %12)
  %14 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %7, i32 %13)
  call void @printLine(ptr %12)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_1f5a3, label %dec_label_pc_1f59e

dec_label_pc_1f59e:                               ; preds = %dec_label_pc_1f49f
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f5a3

dec_label_pc_1f5a3:                               ; preds = %dec_label_pc_1f59e, %dec_label_pc_1f49f
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

