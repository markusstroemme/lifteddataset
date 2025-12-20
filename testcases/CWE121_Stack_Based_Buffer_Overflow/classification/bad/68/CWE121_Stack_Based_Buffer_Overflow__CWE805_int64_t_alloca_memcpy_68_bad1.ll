@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memcpy_68_badData = external local_unnamed_addr global ptr
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_20f13:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_20f5e

dec_label_pc_20f5e:                               ; preds = %dec_label_pc_20f5e, %dec_label_pc_20f13
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_20f75, label %dec_label_pc_20f5e

dec_label_pc_20f75:                               ; preds = %dec_label_pc_20f5e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %8 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_20fe2

dec_label_pc_20fe2:                               ; preds = %dec_label_pc_20fe2, %dec_label_pc_20f75
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %9 = icmp eq i64 %rsp.1.reload, %8
  %10 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_20ff9, label %dec_label_pc_20fe2

dec_label_pc_20ff9:                               ; preds = %dec_label_pc_20fe2
  store i64 %6, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memcpy_68_badData, align 8
  call void @anon1()
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_21068, label %dec_label_pc_21063

dec_label_pc_21063:                               ; preds = %dec_label_pc_20ff9
  call void @__stack_chk_fail()
  br label %dec_label_pc_21068

dec_label_pc_21068:                               ; preds = %dec_label_pc_21063, %dec_label_pc_20ff9
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_211d6:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memcpy_68_badData, align 8
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %1, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_alloca_memcpy_68_badData, align 8
  %5 = ptrtoint ptr %4 to i64
  call void @printLongLongLine(i64 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2125e, label %dec_label_pc_21259

dec_label_pc_21259:                               ; preds = %dec_label_pc_211d6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2125e

dec_label_pc_2125e:                               ; preds = %dec_label_pc_21259, %dec_label_pc_211d6
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

