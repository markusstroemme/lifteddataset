define i32 @staticReturnsTrue.332() local_unnamed_addr {
dec_label_pc_2f1f7:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2f215:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-64.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-37 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.332()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2f24d, label %dec_label_pc_2f23e

dec_label_pc_2f23e:                               ; preds = %dec_label_pc_2f215
  %3 = bitcast ptr %stack_var_-37 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-64.0.reg2mem, align 8
  br label %dec_label_pc_2f24d

dec_label_pc_2f24d:                               ; preds = %dec_label_pc_2f23e, %dec_label_pc_2f215
  %stack_var_-64.0.reload = load ptr, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %dec_label_pc_2f2ad, label %dec_label_pc_2f27f.lr.ph

dec_label_pc_2f27f.lr.ph:                         ; preds = %dec_label_pc_2f24d
  %9 = ptrtoint ptr %stack_var_-64.0.reload to i64
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2f27f

dec_label_pc_2f27f:                               ; preds = %dec_label_pc_2f27f, %dec_label_pc_2f27f.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %11 = add i64 %storemerge2.reload, %9
  %12 = add i64 %storemerge2.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %16, %7
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2f2ad, label %dec_label_pc_2f27f

dec_label_pc_2f2ad:                               ; preds = %dec_label_pc_2f27f, %dec_label_pc_2f24d
  call void @printLine(ptr %stack_var_-64.0.reload)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_2f2ce, label %dec_label_pc_2f2c9

dec_label_pc_2f2c9:                               ; preds = %dec_label_pc_2f2ad
  call void @__stack_chk_fail()
  br label %dec_label_pc_2f2ce

dec_label_pc_2f2ce:                               ; preds = %dec_label_pc_2f2c9, %dec_label_pc_2f2ad
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

