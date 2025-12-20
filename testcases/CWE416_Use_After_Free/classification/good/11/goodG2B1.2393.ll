@global_var_320 = external constant [20 x i8]
@global_var_49d49 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10671:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_106a4, label %dec_label_pc_10693

dec_label_pc_10693:                               ; preds = %dec_label_pc_10671
  call void @printLine(ptr @global_var_49d49)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_106f3

dec_label_pc_106a4:                               ; preds = %dec_label_pc_10671
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_106cd, label %dec_label_pc_106b9

dec_label_pc_106b9:                               ; preds = %dec_label_pc_106a4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_106cd:                               ; preds = %dec_label_pc_106a4, %dec_label_pc_106cd
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  store ptr %2, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_106f3, label %dec_label_pc_106cd

dec_label_pc_106f3:                               ; preds = %dec_label_pc_106cd, %dec_label_pc_10693
  %10 = call i32 @globalReturnsTrue()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_10710, label %dec_label_pc_10701

dec_label_pc_10701:                               ; preds = %dec_label_pc_106f3
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %12 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLine(i64 %12)
  br label %dec_label_pc_10710

dec_label_pc_10710:                               ; preds = %dec_label_pc_10701, %dec_label_pc_106f3
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

