@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3ca95:
  %storemerge3.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-432 = alloca ptr, align 8
  %stack_var_-472 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-472 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3cae3

dec_label_pc_3cae3:                               ; preds = %dec_label_pc_3cae3, %dec_label_pc_3ca95
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3cafa, label %dec_label_pc_3cae3

dec_label_pc_3cafa:                               ; preds = %dec_label_pc_3cae3
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3cb6a

dec_label_pc_3cb6a:                               ; preds = %dec_label_pc_3cb6a, %dec_label_pc_3cafa
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3cb81, label %dec_label_pc_3cb6a

dec_label_pc_3cb81:                               ; preds = %dec_label_pc_3cb6a
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %10 = inttoptr i64 %6 to ptr
  %11 = bitcast ptr %stack_var_-472 to ptr
  store i64 %6, ptr %11, align 8
  %12 = bitcast ptr %stack_var_-432 to ptr
  store i64 %6, ptr %12, align 8
  %13 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %13, i64 0, i64 50)
  %14 = add i64 %9, -416
  store ptr %10, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3cc0f

dec_label_pc_3cc0f:                               ; preds = %dec_label_pc_3cc0f, %dec_label_pc_3cb81
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %15 = ptrtoint ptr %storemerge3.reload to i64
  %16 = mul i64 %15, 4
  %17 = ptrtoint ptr %.reload to i64
  %18 = add i64 %16, %17
  %19 = add i64 %14, %16
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = inttoptr i64 %18 to ptr
  store i32 %21, ptr %22, align 4
  %23 = add i64 %15, 1
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  %26 = load ptr, ptr %stack_var_-432, align 8
  store ptr %26, ptr %.reg2mem, align 8
  store ptr %24, ptr %storemerge3.reg2mem, align 8
  br i1 %25, label %dec_label_pc_3cc4a, label %dec_label_pc_3cc0f

dec_label_pc_3cc4a:                               ; preds = %dec_label_pc_3cc0f
  %27 = load i32, ptr %26, align 4
  call void @printIntLine(i32 %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_3cc6f, label %dec_label_pc_3cc6a

dec_label_pc_3cc6a:                               ; preds = %dec_label_pc_3cc4a
  call void @__stack_chk_fail()
  br label %dec_label_pc_3cc6f

dec_label_pc_3cc6f:                               ; preds = %dec_label_pc_3cc6a, %dec_label_pc_3cc4a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

