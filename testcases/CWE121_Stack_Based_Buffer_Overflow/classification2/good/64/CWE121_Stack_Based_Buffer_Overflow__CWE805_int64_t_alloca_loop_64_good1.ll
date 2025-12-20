@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_16eaa:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_16ef5

dec_label_pc_16ef5:                               ; preds = %dec_label_pc_16ef5, %dec_label_pc_16eaa
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_16f0c, label %dec_label_pc_16ef5

dec_label_pc_16f0c:                               ; preds = %dec_label_pc_16ef5
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
  br label %dec_label_pc_16f79

dec_label_pc_16f79:                               ; preds = %dec_label_pc_16f79, %dec_label_pc_16f0c
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_16f90, label %dec_label_pc_16f79

dec_label_pc_16f90:                               ; preds = %dec_label_pc_16f79
  %constexpr9 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr10 = udiv i128 %constexpr9, 16
  %constexpr11 = trunc i128 %constexpr10 to i64
  %constexpr12 = sext i64 %constexpr11 to i128
  %constexpr13 = mul i128 %constexpr12, 16
  %constexpr14 = trunc i128 %constexpr13 to i64
  %constexpr15 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr16 = and i64 %constexpr14, %constexpr15
  %constexpr17 = sub i64 0, %constexpr16
  %constexpr18 = add i64 %constexpr17, 15
  %8 = add i64 %5, %constexpr18
  %9 = and i64 %8, -16
  %10 = inttoptr i64 %9 to ptr
  store ptr %10, ptr %dataBadBuffer_-40, align 8
  %11 = bitcast ptr %dataBadBuffer_-40 to ptr
  call void @anon0(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_16ff6, label %dec_label_pc_16ff1

dec_label_pc_16ff1:                               ; preds = %dec_label_pc_16f90
  call void @__stack_chk_fail()
  br label %dec_label_pc_16ff6

dec_label_pc_16ff6:                               ; preds = %dec_label_pc_16ff1, %dec_label_pc_16f90
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_170db:
  %0 = alloca i1, align 1
  %storemerge2.reg2mem = alloca ptr, align 8
  %1 = load i1, ptr %0, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = ptrtoint ptr %dataVoidPtr to i64
  %6 = add i64 %2, -816
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_17143

dec_label_pc_17143:                               ; preds = %dec_label_pc_170db, %dec_label_pc_17143
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge2.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %5
  %10 = add i64 %6, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add i64 %7, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  store ptr %15, ptr %storemerge2.reg2mem, align 8
  br i1 %16, label %dec_label_pc_17180, label %dec_label_pc_17143

dec_label_pc_17180:                               ; preds = %dec_label_pc_17143
  %17 = select i1 %1, i64 -800, i64 800
  %18 = ptrtoint ptr %stack_var_-824 to i64
  %19 = add i64 %17, %18
  call void @printLongLongLine(i64 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %3, %20
  br i1 %21, label %dec_label_pc_171a7, label %dec_label_pc_171a2

dec_label_pc_171a2:                               ; preds = %dec_label_pc_17180
  call void @__stack_chk_fail()
  br label %dec_label_pc_171a7

dec_label_pc_171a7:                               ; preds = %dec_label_pc_171a2, %dec_label_pc_17180
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

