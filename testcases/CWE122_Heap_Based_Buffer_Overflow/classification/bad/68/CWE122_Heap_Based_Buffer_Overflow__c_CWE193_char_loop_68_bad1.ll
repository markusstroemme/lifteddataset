@CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_loop_68_badData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_6a6b3:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_6a6e6, label %dec_label_pc_6a6dc

dec_label_pc_6a6dc:                               ; preds = %dec_label_pc_6a6b3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6a6e6:                               ; preds = %dec_label_pc_6a6b3
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_loop_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_6a75e:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_loop_68_badData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %dec_label_pc_6a7e4, label %dec_label_pc_6a7b6.lr.ph

dec_label_pc_6a7b6.lr.ph:                         ; preds = %dec_label_pc_6a75e
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_6a7b6

dec_label_pc_6a7b6:                               ; preds = %dec_label_pc_6a7b6, %dec_label_pc_6a7b6.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %1
  %9 = add i64 %.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %13, %5
  store i64 %13, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6a7e4, label %dec_label_pc_6a7b6

dec_label_pc_6a7e4:                               ; preds = %dec_label_pc_6a7b6, %dec_label_pc_6a75e
  %14 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %14)
  %15 = inttoptr i64 %1 to ptr
  call void @free(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_6a811, label %dec_label_pc_6a80c

dec_label_pc_6a80c:                               ; preds = %dec_label_pc_6a7e4
  call void @__stack_chk_fail()
  br label %dec_label_pc_6a811

dec_label_pc_6a811:                               ; preds = %dec_label_pc_6a80c, %dec_label_pc_6a7e4
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

