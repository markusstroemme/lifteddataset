@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3b238:
  %storemerge2.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-432 = alloca ptr, align 8
  %dataBadBuffer_-456 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3b286

dec_label_pc_3b286:                               ; preds = %dec_label_pc_3b286, %dec_label_pc_3b238
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3b29d, label %dec_label_pc_3b286

dec_label_pc_3b29d:                               ; preds = %dec_label_pc_3b286
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3b30d

dec_label_pc_3b30d:                               ; preds = %dec_label_pc_3b30d, %dec_label_pc_3b29d
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3b324, label %dec_label_pc_3b30d

dec_label_pc_3b324:                               ; preds = %dec_label_pc_3b30d
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %10 = inttoptr i64 %6 to ptr
  %11 = bitcast ptr %stack_var_-432 to ptr
  store i64 %6, ptr %11, align 8
  %12 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %12, i64 0, i64 50)
  store ptr null, ptr %dataBadBuffer_-456, align 8
  %13 = add i64 %9, -416
  store ptr %10, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3b397

dec_label_pc_3b397:                               ; preds = %dec_label_pc_3b397, %dec_label_pc_3b324
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge2.reload to i64
  %15 = mul i64 %14, 4
  %16 = ptrtoint ptr %.reload to i64
  %17 = add i64 %15, %16
  %18 = add i64 %13, %15
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = inttoptr i64 %17 to ptr
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %dataBadBuffer_-456, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = add i64 %23, 1
  %25 = inttoptr i64 %24 to ptr
  store ptr %25, ptr %dataBadBuffer_-456, align 8
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  %27 = load ptr, ptr %stack_var_-432, align 8
  store ptr %27, ptr %.reg2mem, align 8
  store ptr %25, ptr %storemerge2.reg2mem, align 8
  br i1 %26, label %dec_label_pc_3b3d2, label %dec_label_pc_3b397

dec_label_pc_3b3d2:                               ; preds = %dec_label_pc_3b397
  %28 = load i32, ptr %27, align 4
  call void @printIntLine(i32 %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_3b3f7, label %dec_label_pc_3b3f2

dec_label_pc_3b3f2:                               ; preds = %dec_label_pc_3b3d2
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b3f7

dec_label_pc_3b3f7:                               ; preds = %dec_label_pc_3b3f2, %dec_label_pc_3b3d2
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

