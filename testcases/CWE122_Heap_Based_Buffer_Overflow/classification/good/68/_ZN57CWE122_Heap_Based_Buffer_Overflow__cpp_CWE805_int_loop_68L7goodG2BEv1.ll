@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_loop_68_goodG2BData = external local_unnamed_addr global ptr
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3a931:
  %0 = call i64 @_Znam(i64 400)
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_loop_68_goodG2BData, align 8
  %1 = call i64 @anon1()
  ret i64 %1
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3aa41:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-432 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_loop_68_goodG2BData, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = bitcast ptr %stack_var_-432 to ptr
  store i64 %5, ptr %6, align 8
  %7 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 50)
  %8 = add i64 %2, -416
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 8
  store i32 %10, ptr %4, align 4
  store i64 1, ptr %.reg2mem, align 8
  br label %dec_label_pc_3aa91.dec_label_pc_3aa91_crit_edge

dec_label_pc_3aa91.dec_label_pc_3aa91_crit_edge:  ; preds = %dec_label_pc_3aa41, %dec_label_pc_3aa91.dec_label_pc_3aa91_crit_edge
  %.reload = load i64, ptr %.reg2mem, align 8
  %.pre = load ptr, ptr %stack_var_-432, align 8
  %11 = mul i64 %.reload, 4
  %12 = ptrtoint ptr %.pre to i64
  %13 = add i64 %11, %12
  %14 = add i64 %8, %11
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i64 %13 to ptr
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i64 %.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3aacc, label %dec_label_pc_3aa91.dec_label_pc_3aa91_crit_edge

dec_label_pc_3aacc:                               ; preds = %dec_label_pc_3aa91.dec_label_pc_3aa91_crit_edge
  %19 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_loop_68_goodG2BData, align 8
  call void @printIntLine(i32 %19)
  %20 = load ptr, ptr %stack_var_-432, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %dec_label_pc_3aaf5, label %dec_label_pc_3aae6

dec_label_pc_3aae6:                               ; preds = %dec_label_pc_3aacc
  %22 = bitcast ptr %20 to ptr
  %23 = and i64 %1, 4294967295
  %24 = inttoptr i64 %23 to ptr
  call void @_ZdaPv(ptr %22, ptr %24)
  br label %dec_label_pc_3aaf5

dec_label_pc_3aaf5:                               ; preds = %dec_label_pc_3aae6, %dec_label_pc_3aacc
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %3, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_3ab0a, label %dec_label_pc_3ab05

dec_label_pc_3ab05:                               ; preds = %dec_label_pc_3aaf5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3ab0a

dec_label_pc_3ab0a:                               ; preds = %dec_label_pc_3ab05, %dec_label_pc_3aaf5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

