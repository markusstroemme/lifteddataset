@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3a523:
  %storemerge3.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-456 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3a571

dec_label_pc_3a571:                               ; preds = %dec_label_pc_3a571, %dec_label_pc_3a523
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3a588, label %dec_label_pc_3a571

dec_label_pc_3a588:                               ; preds = %dec_label_pc_3a571
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3a5f8

dec_label_pc_3a5f8:                               ; preds = %dec_label_pc_3a5f8, %dec_label_pc_3a588
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3a60f, label %dec_label_pc_3a5f8

dec_label_pc_3a60f:                               ; preds = %dec_label_pc_3a5f8
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %8 = add i64 %4, %constexpr5
  %9 = and i64 %8, -16
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = bitcast ptr %stack_var_-456 to ptr
  store i64 %9, ptr %11, align 8
  %12 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %12, i64 0, i64 50)
  %13 = add i64 %7, -416
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3a69f

dec_label_pc_3a69f:                               ; preds = %dec_label_pc_3a60f, %dec_label_pc_3a69f
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge3.reload to i64
  %15 = mul i64 %14, 4
  %16 = load ptr, ptr %stack_var_-456, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = add i64 %15, %17
  %19 = add i64 %13, %15
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = inttoptr i64 %18 to ptr
  store i32 %21, ptr %22, align 4
  %23 = add i64 %14, 1
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  store ptr %24, ptr %storemerge3.reg2mem, align 8
  br i1 %25, label %dec_label_pc_3a6da, label %dec_label_pc_3a69f

dec_label_pc_3a6da:                               ; preds = %dec_label_pc_3a69f
  %26 = load ptr, ptr %stack_var_-456, align 8
  %27 = load i32, ptr %26, align 4
  call void @printIntLine(i32 %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_3a6ff, label %dec_label_pc_3a6fa

dec_label_pc_3a6fa:                               ; preds = %dec_label_pc_3a6da
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a6ff

dec_label_pc_3a6ff:                               ; preds = %dec_label_pc_3a6fa, %dec_label_pc_3a6da
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_9d049:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

