@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_loop_68_badData = external local_unnamed_addr global i64
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_d293:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_loop_68_badData, align 8
  %5 = call i64 @anon1()
  ret i64 %5
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_d33f:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_loop_68_badData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_d3df, label %dec_label_pc_d3b5.lr.ph

dec_label_pc_d3b5.lr.ph:                          ; preds = %dec_label_pc_d33f
  %7 = sext i32 %5 to i64
  %8 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_d3b5

dec_label_pc_d3b5:                                ; preds = %dec_label_pc_d3b5.lr.ph, %dec_label_pc_d3b5
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = add i64 %storemerge1.reload, %3
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = add i64 %storemerge1.reload, %8
  %13 = inttoptr i64 %12 to ptr
  store i8 %11, ptr %13, align 1
  %14 = add nuw i64 %storemerge1.reload, 1
  %15 = icmp ult i64 %14, %7
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_d3b5, label %dec_label_pc_d3df

dec_label_pc_d3df:                                ; preds = %dec_label_pc_d3b5, %dec_label_pc_d33f
  call void @printLine(ptr %4)
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_d402, label %dec_label_pc_d3f6

dec_label_pc_d3f6:                                ; preds = %dec_label_pc_d3df
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_d402

dec_label_pc_d402:                                ; preds = %dec_label_pc_d3f6, %dec_label_pc_d3df
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %2, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_d417, label %dec_label_pc_d412

dec_label_pc_d412:                                ; preds = %dec_label_pc_d402
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_d417

dec_label_pc_d417:                                ; preds = %dec_label_pc_d412, %dec_label_pc_d402
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

