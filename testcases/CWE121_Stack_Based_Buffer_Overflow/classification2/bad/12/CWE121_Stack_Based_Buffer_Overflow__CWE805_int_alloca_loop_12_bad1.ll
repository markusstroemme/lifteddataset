@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3a345:
  %storemerge3.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-456 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3a393

dec_label_pc_3a393:                               ; preds = %dec_label_pc_3a393, %dec_label_pc_3a345
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3a3aa, label %dec_label_pc_3a393

dec_label_pc_3a3aa:                               ; preds = %dec_label_pc_3a393
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3a41a

dec_label_pc_3a41a:                               ; preds = %dec_label_pc_3a41a, %dec_label_pc_3a3aa
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3a431, label %dec_label_pc_3a41a

dec_label_pc_3a431:                               ; preds = %dec_label_pc_3a41a
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_3a48f, label %dec_label_pc_3a47f

dec_label_pc_3a47f:                               ; preds = %dec_label_pc_3a431
  %10 = and i64 %5, -16
  %11 = bitcast ptr %stack_var_-456 to ptr
  store i64 %10, ptr %11, align 8
  br label %dec_label_pc_3a49d

dec_label_pc_3a48f:                               ; preds = %dec_label_pc_3a431
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %12 = add i64 %4, %constexpr5
  %13 = and i64 %12, -16
  %14 = bitcast ptr %stack_var_-456 to ptr
  store i64 %13, ptr %14, align 8
  br label %dec_label_pc_3a49d

dec_label_pc_3a49d:                               ; preds = %dec_label_pc_3a48f, %dec_label_pc_3a47f
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %16, i64 0, i64 50)
  %17 = add i64 %15, -416
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3a4c1

dec_label_pc_3a4c1:                               ; preds = %dec_label_pc_3a49d, %dec_label_pc_3a4c1
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %18 = ptrtoint ptr %storemerge3.reload to i64
  %19 = mul i64 %18, 4
  %20 = load ptr, ptr %stack_var_-456, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = add i64 %19, %21
  %23 = add i64 %17, %19
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = inttoptr i64 %22 to ptr
  store i32 %25, ptr %26, align 4
  %27 = add i64 %18, 1
  %28 = inttoptr i64 %27 to ptr
  %29 = icmp ugt ptr %28, inttoptr (i64 99 to ptr)
  store ptr %28, ptr %storemerge3.reg2mem, align 8
  br i1 %29, label %dec_label_pc_3a4fc, label %dec_label_pc_3a4c1

dec_label_pc_3a4fc:                               ; preds = %dec_label_pc_3a4c1
  %30 = load ptr, ptr %stack_var_-456, align 8
  %31 = load i32, ptr %30, align 4
  call void @printIntLine(i32 %31)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  br i1 %33, label %dec_label_pc_3a521, label %dec_label_pc_3a51c

dec_label_pc_3a51c:                               ; preds = %dec_label_pc_3a4fc
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a521

dec_label_pc_3a521:                               ; preds = %dec_label_pc_3a51c, %dec_label_pc_3a4fc
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

