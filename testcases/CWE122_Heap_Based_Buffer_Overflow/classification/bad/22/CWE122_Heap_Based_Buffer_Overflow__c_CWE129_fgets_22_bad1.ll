@global_var_b58ac = external constant [16 x i8]
@CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fgets_22_badGlobal = external local_unnamed_addr global i32
@global_var_b58c0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2cd0d:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2cd72, label %dec_label_pc_2cd61

dec_label_pc_2cd61:                               ; preds = %dec_label_pc_2cd0d
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2cd81

dec_label_pc_2cd72:                               ; preds = %dec_label_pc_2cd0d
  call void @printLine(ptr @global_var_b58ac)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2cd81

dec_label_pc_2cd81:                               ; preds = %dec_label_pc_2cd72, %dec_label_pc_2cd61
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fgets_22_badGlobal, align 4
  call void @anon1(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2cdaa, label %dec_label_pc_2cda5

dec_label_pc_2cda5:                               ; preds = %dec_label_pc_2cd81
  call void @__stack_chk_fail()
  br label %dec_label_pc_2cdaa

dec_label_pc_2cdaa:                               ; preds = %dec_label_pc_2cda5, %dec_label_pc_2cd81
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2cf44:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fgets_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2d01a, label %dec_label_pc_2cf61

dec_label_pc_2cf61:                               ; preds = %dec_label_pc_2cf44
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2cf89, label %dec_label_pc_2cf76

dec_label_pc_2cf76:                               ; preds = %dec_label_pc_2cf61
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2cf89:                               ; preds = %dec_label_pc_2cf61, %dec_label_pc_2cf89
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %6 = mul i64 %indvars.iv4.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2cfad, label %dec_label_pc_2cf89

dec_label_pc_2cfad:                               ; preds = %dec_label_pc_2cf89
  %9 = icmp slt i32 %data, 0
  br i1 %9, label %dec_label_pc_2cfff, label %dec_label_pc_2cfb3

dec_label_pc_2cfb3:                               ; preds = %dec_label_pc_2cfad
  %10 = sext i32 %data to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2cfd6

dec_label_pc_2cfd6:                               ; preds = %dec_label_pc_2cfd6, %dec_label_pc_2cfb3
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2d00e, label %dec_label_pc_2cfd6

dec_label_pc_2cfff:                               ; preds = %dec_label_pc_2cfad
  call void @printLine(ptr @global_var_b58c0)
  br label %dec_label_pc_2d00e

dec_label_pc_2d00e:                               ; preds = %dec_label_pc_2cfd6, %dec_label_pc_2cfff
  call void @free(ptr %2)
  br label %dec_label_pc_2d01a

dec_label_pc_2d01a:                               ; preds = %dec_label_pc_2d00e, %dec_label_pc_2cf44
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

