@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE193_char_memmove_68_goodG2BData = external local_unnamed_addr global i64
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8a306:
  %0 = call i64 @_Znam(i64 11)
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE193_char_memmove_68_goodG2BData, align 8
  %1 = call i64 @anon1()
  ret i64 %1
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_8a3e2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE193_char_memmove_68_goodG2BData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @memmove(ptr %5, ptr nonnull %stack_var_-27, i32 %4)
  %7 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %7)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_8a462, label %dec_label_pc_8a456

dec_label_pc_8a456:                               ; preds = %dec_label_pc_8a3e2
  %9 = ptrtoint ptr %stack_var_-27 to i64
  %10 = and i64 %9, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %5, ptr %11)
  br label %dec_label_pc_8a462

dec_label_pc_8a462:                               ; preds = %dec_label_pc_8a456, %dec_label_pc_8a3e2
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_8a477, label %dec_label_pc_8a472

dec_label_pc_8a472:                               ; preds = %dec_label_pc_8a462
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8a477

dec_label_pc_8a477:                               ; preds = %dec_label_pc_8a472, %dec_label_pc_8a462
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

