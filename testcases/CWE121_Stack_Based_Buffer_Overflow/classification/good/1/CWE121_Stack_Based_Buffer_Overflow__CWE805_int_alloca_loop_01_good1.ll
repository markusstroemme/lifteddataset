@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36a0c:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %dataBadBuffer_-456 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_36a5a

dec_label_pc_36a5a:                               ; preds = %dec_label_pc_36a5a, %dec_label_pc_36a0c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_36a71, label %dec_label_pc_36a5a

dec_label_pc_36a71:                               ; preds = %dec_label_pc_36a5a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_36ae1

dec_label_pc_36ae1:                               ; preds = %dec_label_pc_36ae1, %dec_label_pc_36a71
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_36af8, label %dec_label_pc_36ae1

dec_label_pc_36af8:                               ; preds = %dec_label_pc_36ae1
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %8 = add i64 %4, %constexpr5
  %9 = and i64 %8, -16
  %10 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 50)
  store ptr null, ptr %dataBadBuffer_-456, align 8
  %11 = add i64 %7, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_36b6a

dec_label_pc_36b6a:                               ; preds = %dec_label_pc_36af8, %dec_label_pc_36b6a
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge2.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %9
  %15 = add i64 %11, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i64 %14 to ptr
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %dataBadBuffer_-456, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = add i64 %20, 1
  %22 = inttoptr i64 %21 to ptr
  store ptr %22, ptr %dataBadBuffer_-456, align 8
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge2.reg2mem, align 8
  br i1 %23, label %dec_label_pc_36ba5, label %dec_label_pc_36b6a

dec_label_pc_36ba5:                               ; preds = %dec_label_pc_36b6a
  %24 = inttoptr i64 %9 to ptr
  %25 = load i32, ptr %24, align 16
  call void @printIntLine(i32 %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_36bca, label %dec_label_pc_36bc5

dec_label_pc_36bc5:                               ; preds = %dec_label_pc_36ba5
  call void @__stack_chk_fail()
  br label %dec_label_pc_36bca

dec_label_pc_36bca:                               ; preds = %dec_label_pc_36bc5, %dec_label_pc_36ba5
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

