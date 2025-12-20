@global_var_b8c38 = external constant [32 x i8]
@CWE122_Heap_Based_Buffer_Overflow__c_CWE129_rand_45_goodG2BData = external local_unnamed_addr global i32
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5da92:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_rand_45_goodG2BData, align 4
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5dacf, label %dec_label_pc_5dabc

dec_label_pc_5dabc:                               ; preds = %dec_label_pc_5da92
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5dacf:                               ; preds = %dec_label_pc_5da92, %dec_label_pc_5dacf
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5daf3, label %dec_label_pc_5dacf

dec_label_pc_5daf3:                               ; preds = %dec_label_pc_5dacf
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %dec_label_pc_5db45, label %dec_label_pc_5daf9

dec_label_pc_5daf9:                               ; preds = %dec_label_pc_5daf3
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5db1c

dec_label_pc_5db1c:                               ; preds = %dec_label_pc_5db1c, %dec_label_pc_5daf9
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5db54, label %dec_label_pc_5db1c

dec_label_pc_5db45:                               ; preds = %dec_label_pc_5daf3
  call void @printLine(ptr @global_var_b8c38)
  br label %dec_label_pc_5db54

dec_label_pc_5db54:                               ; preds = %dec_label_pc_5db1c, %dec_label_pc_5db45
  call void @free(ptr %1)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5db63:
  store i32 7, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_rand_45_goodG2BData, align 4
  call void @anon0()
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

