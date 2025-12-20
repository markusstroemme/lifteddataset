@CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_loop_68_badData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_d036:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_d061, label %dec_label_pc_d057

dec_label_pc_d057:                                ; preds = %dec_label_pc_d036
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d061:                                ; preds = %dec_label_pc_d036
  %3 = ptrtoint ptr %0 to i64
  %4 = call ptr @memset(ptr %0, i32 65, i32 99)
  %5 = add i64 %3, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_loop_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_d113:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_loop_68_badData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @strlen(ptr %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_d1b3, label %dec_label_pc_d189.lr.ph

dec_label_pc_d189.lr.ph:                          ; preds = %dec_label_pc_d113
  %5 = sext i32 %3 to i64
  %6 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_d189

dec_label_pc_d189:                                ; preds = %dec_label_pc_d189.lr.ph, %dec_label_pc_d189
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = add i64 %.reload, %1
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = add i64 %.reload, %6
  %11 = inttoptr i64 %10 to ptr
  store i8 %9, ptr %11, align 1
  %12 = add nuw i64 %.reload, 1
  %13 = icmp ult i64 %12, %5
  store i64 %12, ptr %.reg2mem, align 8
  br i1 %13, label %dec_label_pc_d189, label %dec_label_pc_d1b3

dec_label_pc_d1b3:                                ; preds = %dec_label_pc_d189, %dec_label_pc_d113
  call void @printLine(ptr %2)
  %14 = inttoptr i64 %1 to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_d1e4, label %dec_label_pc_d1df

dec_label_pc_d1df:                                ; preds = %dec_label_pc_d1b3
  call void @__stack_chk_fail()
  br label %dec_label_pc_d1e4

dec_label_pc_d1e4:                                ; preds = %dec_label_pc_d1df, %dec_label_pc_d1b3
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

