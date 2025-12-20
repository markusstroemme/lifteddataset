@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_char_loop_68_badData = external local_unnamed_addr global i64
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_c731:
  %0 = call i64 @_Znam(i64 50)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_char_loop_68_badData, align 8
  %2 = call i64 @anon1()
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_c7b9:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_char_loop_68_badData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_c803

dec_label_pc_c803:                                ; preds = %dec_label_pc_c803, %dec_label_pc_c7b9
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %4 = add i64 %storemerge1.reload, %1
  %5 = add i64 %storemerge1.reload, %3
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c82a, label %dec_label_pc_c803

dec_label_pc_c82a:                                ; preds = %dec_label_pc_c803
  %10 = add i64 %1, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  %12 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %12)
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %dec_label_pc_c854, label %dec_label_pc_c848

dec_label_pc_c848:                                ; preds = %dec_label_pc_c82a
  %14 = inttoptr i64 %1 to ptr
  call void @_ZdaPv(ptr %14, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_c854

dec_label_pc_c854:                                ; preds = %dec_label_pc_c848, %dec_label_pc_c82a
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_c869, label %dec_label_pc_c864

dec_label_pc_c864:                                ; preds = %dec_label_pc_c854
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c869

dec_label_pc_c869:                                ; preds = %dec_label_pc_c864, %dec_label_pc_c854
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

