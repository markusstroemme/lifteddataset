@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_memcpy_68_badData = external local_unnamed_addr global ptr
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_45946:
  %0 = call i64 @_Znam(i64 200)
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_memcpy_68_badData, align 8
  %1 = call i64 @anon1()
  ret i64 %1
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_459c0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_memcpy_68_badData, align 8
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int_memcpy_68_badData, align 8
  call void @printIntLine(i32 %5)
  %6 = icmp eq ptr %1, null
  br i1 %6, label %dec_label_pc_45a4a, label %dec_label_pc_45a3b

dec_label_pc_45a3b:                               ; preds = %dec_label_pc_459c0
  %7 = ptrtoint ptr %stack_var_-424 to i64
  %8 = and i64 %7, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %3, ptr %9)
  br label %dec_label_pc_45a4a

dec_label_pc_45a4a:                               ; preds = %dec_label_pc_45a3b, %dec_label_pc_459c0
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_45a5f, label %dec_label_pc_45a5a

dec_label_pc_45a5a:                               ; preds = %dec_label_pc_45a4a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45a5f

dec_label_pc_45a5f:                               ; preds = %dec_label_pc_45a5a, %dec_label_pc_45a4a
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

