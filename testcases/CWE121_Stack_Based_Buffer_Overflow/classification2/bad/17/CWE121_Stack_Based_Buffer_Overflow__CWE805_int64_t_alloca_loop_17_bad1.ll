@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_137bd:
  %storemerge2.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %dataBadBuffer_-856 = alloca ptr, align 8
  %stack_var_-872 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-872 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1380b

dec_label_pc_1380b:                               ; preds = %dec_label_pc_1380b, %dec_label_pc_137bd
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_13822, label %dec_label_pc_1380b

dec_label_pc_13822:                               ; preds = %dec_label_pc_1380b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %7 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_13892

dec_label_pc_13892:                               ; preds = %dec_label_pc_13892, %dec_label_pc_13822
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %7
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_1390a.preheader, label %dec_label_pc_13892

dec_label_pc_1390a.preheader:                     ; preds = %dec_label_pc_13892
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %dataBadBuffer_-856 to ptr
  store i64 %6, ptr %12, align 8
  %13 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %13, i64 0, i64 100)
  %14 = add i64 %10, -816
  store ptr %11, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_13937

dec_label_pc_13937:                               ; preds = %dec_label_pc_13937, %dec_label_pc_1390a.preheader
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %15 = ptrtoint ptr %storemerge2.reload to i64
  %16 = mul i64 %15, 8
  %17 = ptrtoint ptr %.reload to i64
  %18 = add i64 %16, %17
  %19 = add i64 %14, %16
  %20 = inttoptr i64 %19 to ptr
  %21 = load i64, ptr %20, align 8
  %22 = inttoptr i64 %18 to ptr
  store i64 %21, ptr %22, align 8
  %23 = add i64 %15, 1
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  %26 = load ptr, ptr %dataBadBuffer_-856, align 8
  store ptr %26, ptr %.reg2mem, align 8
  store ptr %24, ptr %storemerge2.reg2mem, align 8
  br i1 %25, label %dec_label_pc_13974, label %dec_label_pc_13937

dec_label_pc_13974:                               ; preds = %dec_label_pc_13937
  %27 = load i64, ptr %26, align 8
  call void @printLongLongLine(i64 %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_1399b, label %dec_label_pc_13996

dec_label_pc_13996:                               ; preds = %dec_label_pc_13974
  call void @__stack_chk_fail()
  br label %dec_label_pc_1399b

dec_label_pc_1399b:                               ; preds = %dec_label_pc_13996, %dec_label_pc_13974
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

