define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_30d6d:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_30dec, label %dec_label_pc_30dbe.lr.ph

dec_label_pc_30dbe.lr.ph:                         ; preds = %dec_label_pc_30d6d
  %6 = ptrtoint ptr %data to i64
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_30dbe

dec_label_pc_30dbe:                               ; preds = %dec_label_pc_30dbe, %dec_label_pc_30dbe.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = add i64 %storemerge2.reload, %6
  %9 = add i64 %storemerge2.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %13, %4
  store i64 %13, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_30dec, label %dec_label_pc_30dbe

dec_label_pc_30dec:                               ; preds = %dec_label_pc_30dbe, %dec_label_pc_30d6d
  call void @printLine(ptr %data)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_30e0d, label %dec_label_pc_30e08

dec_label_pc_30e08:                               ; preds = %dec_label_pc_30dec
  call void @__stack_chk_fail()
  br label %dec_label_pc_30e0d

dec_label_pc_30e0d:                               ; preds = %dec_label_pc_30e08, %dec_label_pc_30dec
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_30e0f:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_30e5a, label %dec_label_pc_30e55

dec_label_pc_30e55:                               ; preds = %dec_label_pc_30e0f
  call void @__stack_chk_fail()
  br label %dec_label_pc_30e5a

dec_label_pc_30e5a:                               ; preds = %dec_label_pc_30e55, %dec_label_pc_30e0f
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

