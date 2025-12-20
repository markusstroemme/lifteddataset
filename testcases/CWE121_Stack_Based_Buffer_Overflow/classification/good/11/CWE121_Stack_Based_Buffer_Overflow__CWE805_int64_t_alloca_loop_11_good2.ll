@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_11dac:
  %storemerge1.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_11dfa

dec_label_pc_11dfa:                               ; preds = %dec_label_pc_11dfa, %dec_label_pc_11dac
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_11e11, label %dec_label_pc_11dfa

dec_label_pc_11e11:                               ; preds = %dec_label_pc_11dfa
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
  br label %dec_label_pc_11e81

dec_label_pc_11e81:                               ; preds = %dec_label_pc_11e81, %dec_label_pc_11e11
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_11e98, label %dec_label_pc_11e81

dec_label_pc_11e98:                               ; preds = %dec_label_pc_11e81
  %8 = call i32 @globalReturnsTrue()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_11ef4, label %dec_label_pc_11ee6

dec_label_pc_11ee6:                               ; preds = %dec_label_pc_11e98
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
  %10 = add i64 %5, %constexpr18
  %11 = and i64 %10, -16
  store i64 %11, ptr %stack_var_-856, align 8
  br label %dec_label_pc_11ef4

dec_label_pc_11ef4:                               ; preds = %dec_label_pc_11ee6, %dec_label_pc_11e98
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %13, i64 0, i64 100)
  %14 = add i64 %12, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_11f18

dec_label_pc_11f18:                               ; preds = %dec_label_pc_11ef4, %dec_label_pc_11f18
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %15 = ptrtoint ptr %storemerge1.reload to i64
  %16 = mul i64 %15, 8
  %17 = load i64, ptr %stack_var_-856, align 8
  %18 = add i64 %16, %17
  %19 = add i64 %14, %16
  %20 = inttoptr i64 %19 to ptr
  %21 = load i64, ptr %20, align 8
  %22 = inttoptr i64 %18 to ptr
  store i64 %21, ptr %22, align 8
  %23 = add i64 %15, 1
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  store ptr %24, ptr %storemerge1.reg2mem, align 8
  br i1 %25, label %dec_label_pc_11f55, label %dec_label_pc_11f18

dec_label_pc_11f55:                               ; preds = %dec_label_pc_11f18
  %26 = load i64, ptr %stack_var_-856, align 8
  %27 = inttoptr i64 %26 to ptr
  %28 = load i64, ptr %27, align 8
  call void @printLongLongLine(i64 %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_11f7c, label %dec_label_pc_11f77

dec_label_pc_11f77:                               ; preds = %dec_label_pc_11f55
  call void @__stack_chk_fail()
  br label %dec_label_pc_11f7c

dec_label_pc_11f7c:                               ; preds = %dec_label_pc_11f77, %dec_label_pc_11f55
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_9d02b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

