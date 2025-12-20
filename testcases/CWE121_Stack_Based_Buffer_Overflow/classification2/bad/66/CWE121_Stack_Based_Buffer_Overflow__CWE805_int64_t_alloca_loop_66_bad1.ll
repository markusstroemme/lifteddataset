@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_175d0:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1761b

dec_label_pc_1761b:                               ; preds = %dec_label_pc_1761b, %dec_label_pc_175d0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_17632, label %dec_label_pc_1761b

dec_label_pc_17632:                               ; preds = %dec_label_pc_1761b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1769f

dec_label_pc_1769f:                               ; preds = %dec_label_pc_1769f, %dec_label_pc_17632
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_176b6, label %dec_label_pc_1769f

dec_label_pc_176b6:                               ; preds = %dec_label_pc_1769f
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %1, %9
  br i1 %10, label %dec_label_pc_17724, label %dec_label_pc_1771f

dec_label_pc_1771f:                               ; preds = %dec_label_pc_176b6
  call void @__stack_chk_fail()
  br label %dec_label_pc_17724

dec_label_pc_17724:                               ; preds = %dec_label_pc_1771f, %dec_label_pc_176b6
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_17891:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_178ec

dec_label_pc_178ec:                               ; preds = %dec_label_pc_17891, %dec_label_pc_178ec
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge1.reload to i64
  %9 = mul i64 %8, 8
  %10 = add i64 %9, %5
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge1.reg2mem, align 8
  br i1 %17, label %dec_label_pc_17929, label %dec_label_pc_178ec

dec_label_pc_17929:                               ; preds = %dec_label_pc_178ec
  %18 = inttoptr i64 %5 to ptr
  %19 = load i64, ptr %18, align 8
  call void @printLongLongLine(i64 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_17950, label %dec_label_pc_1794b

dec_label_pc_1794b:                               ; preds = %dec_label_pc_17929
  call void @__stack_chk_fail()
  br label %dec_label_pc_17950

dec_label_pc_17950:                               ; preds = %dec_label_pc_1794b, %dec_label_pc_17929
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

