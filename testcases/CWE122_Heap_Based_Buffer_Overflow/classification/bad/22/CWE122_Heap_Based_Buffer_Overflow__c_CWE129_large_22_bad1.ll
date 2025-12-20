@CWE122_Heap_Based_Buffer_Overflow__c_CWE129_large_22_badGlobal = external local_unnamed_addr global i32
@global_var_b7268 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_419b9:
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_large_22_badGlobal, align 4
  call void @anon1(i32 10)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_41aa6:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_large_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_41b7c, label %dec_label_pc_41ac3

dec_label_pc_41ac3:                               ; preds = %dec_label_pc_41aa6
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %5, label %dec_label_pc_41aeb, label %dec_label_pc_41ad8

dec_label_pc_41ad8:                               ; preds = %dec_label_pc_41ac3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_41aeb:                               ; preds = %dec_label_pc_41ac3, %dec_label_pc_41aeb
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %6 = mul i64 %indvars.iv4.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_41b0f, label %dec_label_pc_41aeb

dec_label_pc_41b0f:                               ; preds = %dec_label_pc_41aeb
  %9 = icmp slt i32 %data, 0
  br i1 %9, label %dec_label_pc_41b61, label %dec_label_pc_41b15

dec_label_pc_41b15:                               ; preds = %dec_label_pc_41b0f
  %10 = sext i32 %data to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_41b38

dec_label_pc_41b38:                               ; preds = %dec_label_pc_41b38, %dec_label_pc_41b15
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_41b70, label %dec_label_pc_41b38

dec_label_pc_41b61:                               ; preds = %dec_label_pc_41b0f
  call void @printLine(ptr @global_var_b7268)
  br label %dec_label_pc_41b70

dec_label_pc_41b70:                               ; preds = %dec_label_pc_41b38, %dec_label_pc_41b61
  call void @free(ptr %2)
  br label %dec_label_pc_41b7c

dec_label_pc_41b7c:                               ; preds = %dec_label_pc_41b70, %dec_label_pc_41aa6
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

