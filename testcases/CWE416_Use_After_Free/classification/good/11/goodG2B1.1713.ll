@global_var_49c69 = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d26f:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d2a2, label %dec_label_pc_d291

dec_label_pc_d291:                                ; preds = %dec_label_pc_d26f
  call void @printLine(ptr @global_var_49c69)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_d2f0

dec_label_pc_d2a2:                                ; preds = %dec_label_pc_d26f
  %2 = call ptr @malloc(i32 400)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_d2e9.preheader, label %dec_label_pc_d2b7

dec_label_pc_d2e9.preheader:                      ; preds = %dec_label_pc_d2a2
  %5 = bitcast ptr %2 to ptr
  %6 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_d2cb

dec_label_pc_d2b7:                                ; preds = %dec_label_pc_d2a2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d2cb:                                ; preds = %dec_label_pc_d2cb, %dec_label_pc_d2e9.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  store ptr %5, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_d2f0, label %dec_label_pc_d2cb

dec_label_pc_d2f0:                                ; preds = %dec_label_pc_d2cb, %dec_label_pc_d291
  %11 = call i32 @globalReturnsTrue()
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_d30b, label %dec_label_pc_d2fe

dec_label_pc_d2fe:                                ; preds = %dec_label_pc_d2f0
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %13 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_d30b

dec_label_pc_d30b:                                ; preds = %dec_label_pc_d2fe, %dec_label_pc_d2f0
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
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

