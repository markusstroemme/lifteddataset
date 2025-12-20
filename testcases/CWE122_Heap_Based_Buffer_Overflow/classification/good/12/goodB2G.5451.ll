@global_var_b63b0 = external constant [36 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_b6388 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_359d6:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_ec080, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_b6388)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  %6 = call ptr @malloc(i32 40)
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp eq ptr %6, null
  %9 = icmp eq i1 %8, false
  br i1 %5, label %dec_label_pc_35b25, label %dec_label_pc_35a5e

dec_label_pc_35a5e:                               ; preds = %dec_label_pc_359d6
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br i1 %9, label %dec_label_pc_35a86, label %dec_label_pc_35a73

dec_label_pc_35a73:                               ; preds = %dec_label_pc_35a5e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_35a86:                               ; preds = %dec_label_pc_35a5e, %dec_label_pc_35a86
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %10 = mul i64 %indvars.iv9.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_35b05, label %dec_label_pc_35a86

dec_label_pc_35b05:                               ; preds = %dec_label_pc_35a86
  call void @printLine(ptr @global_var_b63b0)
  call void @free(ptr %6)
  br label %dec_label_pc_35be7

dec_label_pc_35b25:                               ; preds = %dec_label_pc_359d6
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %9, label %dec_label_pc_35b4d, label %dec_label_pc_35b3a

dec_label_pc_35b3a:                               ; preds = %dec_label_pc_35b25
  call void @exit(i32 -1)
  unreachable

dec_label_pc_35b4d:                               ; preds = %dec_label_pc_35b25, %dec_label_pc_35b4d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %7
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_35bcc, label %dec_label_pc_35b4d

dec_label_pc_35bcc:                               ; preds = %dec_label_pc_35b4d
  call void @printLine(ptr @global_var_b63b0)
  call void @free(ptr %6)
  br label %dec_label_pc_35be7

dec_label_pc_35be7:                               ; preds = %dec_label_pc_35bcc, %dec_label_pc_35b05
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_35bfc, label %dec_label_pc_35bf7

dec_label_pc_35bf7:                               ; preds = %dec_label_pc_35be7
  call void @__stack_chk_fail()
  br label %dec_label_pc_35bfc

dec_label_pc_35bfc:                               ; preds = %dec_label_pc_35bf7, %dec_label_pc_35be7
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

