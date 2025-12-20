define void @anon0() local_unnamed_addr {
dec_label_pc_2fc4d:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %2, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %dec_label_pc_2fcf6, label %dec_label_pc_2fcc8.lr.ph

dec_label_pc_2fcc8.lr.ph:                         ; preds = %dec_label_pc_2fc4d
  %8 = ptrtoint ptr %stack_var_-38 to i64
  %9 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2fcc8

dec_label_pc_2fcc8:                               ; preds = %dec_label_pc_2fcc8, %dec_label_pc_2fcc8.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %10 = add i64 %storemerge2.reload, %8
  %11 = add i64 %storemerge2.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %15, %6
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2fcf6, label %dec_label_pc_2fcc8

dec_label_pc_2fcf6:                               ; preds = %dec_label_pc_2fcc8, %dec_label_pc_2fc4d
  call void @printLine(ptr nonnull %2)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_2fd17, label %dec_label_pc_2fd12

dec_label_pc_2fd12:                               ; preds = %dec_label_pc_2fcf6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2fd17

dec_label_pc_2fd17:                               ; preds = %dec_label_pc_2fd12, %dec_label_pc_2fcf6
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4f4a1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

