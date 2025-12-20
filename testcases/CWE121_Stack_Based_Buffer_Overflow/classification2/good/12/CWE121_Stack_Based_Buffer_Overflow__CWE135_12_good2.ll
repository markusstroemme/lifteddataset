@global_var_1000 = external global ptr
@global_var_b9db0 = external constant [43 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5fb0f:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-56, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  store ptr @global_var_b9db0, ptr %stack_var_-56, align 8
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %stack_var_-56, align 8
  %6 = call i32 @strlen(ptr %5)
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, 24
  %9 = udiv i64 %8, 16
  %10 = mul i64 %9, 16
  %11 = and i64 %10, -4096
  %12 = sub i64 %0, %11
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  store i64 %0, ptr %rsp.1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5fc74, label %dec_label_pc_5fbb3

dec_label_pc_5fbb3:                               ; preds = %dec_label_pc_5fb0f, %dec_label_pc_5fbb3
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %13 = icmp eq i64 %rsp.0.reload, %12
  %14 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %14, ptr %rsp.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_5fbca, label %dec_label_pc_5fbb3

dec_label_pc_5fbca:                               ; preds = %dec_label_pc_5fbb3
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %15 = and i64 %10, %constexpr
  %16 = sub nsw i64 15, %15
  %17 = add i64 %16, %12
  %18 = and i64 %17, -16
  %19 = load ptr, ptr %stack_var_-56, align 8
  %20 = inttoptr i64 %18 to ptr
  %21 = call ptr @strcpy(ptr %20, ptr %19)
  call void @printLine(ptr %20)
  br label %dec_label_pc_5fce7

dec_label_pc_5fc74:                               ; preds = %dec_label_pc_5fb0f, %dec_label_pc_5fc74
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %22 = icmp eq i64 %rsp.1.reload, %12
  %23 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %23, ptr %rsp.1.reg2mem, align 8
  br i1 %22, label %dec_label_pc_5fc8b, label %dec_label_pc_5fc74

dec_label_pc_5fc8b:                               ; preds = %dec_label_pc_5fc74
  %constexpr1 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %24 = and i64 %10, %constexpr1
  %25 = sub nsw i64 15, %24
  %26 = add i64 %25, %12
  %27 = and i64 %26, -16
  %28 = load ptr, ptr %stack_var_-56, align 8
  %29 = inttoptr i64 %27 to ptr
  %30 = call ptr @strcpy(ptr %29, ptr %28)
  call void @printLine(ptr %29)
  br label %dec_label_pc_5fce7

dec_label_pc_5fce7:                               ; preds = %dec_label_pc_5fc8b, %dec_label_pc_5fbca
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %1, %31
  br i1 %32, label %dec_label_pc_5fcfc, label %dec_label_pc_5fcf7

dec_label_pc_5fcf7:                               ; preds = %dec_label_pc_5fce7
  call void @__stack_chk_fail()
  br label %dec_label_pc_5fcfc

dec_label_pc_5fcfc:                               ; preds = %dec_label_pc_5fcf7, %dec_label_pc_5fce7
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

