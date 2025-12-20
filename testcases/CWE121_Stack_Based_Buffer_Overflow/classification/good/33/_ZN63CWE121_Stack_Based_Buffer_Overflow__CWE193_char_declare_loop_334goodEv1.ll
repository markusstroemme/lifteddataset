@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4aa63:
  %rax.0.reg2mem = alloca i64, align 8
  %.lcssa.reg2mem = alloca ptr, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %1, align 8
  %.cast = ptrtoint ptr %stack_var_-38 to i64
  %2 = bitcast ptr %stack_var_-56 to ptr
  store i64 %.cast, ptr %2, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 1
  %7 = icmp eq i64 %6, 0
  store ptr %1, ptr %.lcssa.reg2mem, align 8
  br i1 %7, label %dec_label_pc_4ab00, label %dec_label_pc_4aad2.lr.ph

dec_label_pc_4aad2.lr.ph:                         ; preds = %dec_label_pc_4aa63
  %8 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %1, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_4aad2

dec_label_pc_4aad2:                               ; preds = %dec_label_pc_4aad2, %dec_label_pc_4aad2.lr.ph
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %9 = ptrtoint ptr %.reload to i64
  %10 = add i64 %storemerge3.reload, %9
  %11 = add i64 %storemerge3.reload, %8
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = add nuw i64 %storemerge3.reload, 1
  %16 = load ptr, ptr %stack_var_-56, align 8
  %exitcond = icmp eq i64 %15, %6
  store ptr %16, ptr %.reg2mem, align 8
  store i64 %15, ptr %storemerge3.reg2mem, align 8
  store ptr %16, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4ab00, label %dec_label_pc_4aad2

dec_label_pc_4ab00:                               ; preds = %dec_label_pc_4aad2, %dec_label_pc_4aa63
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_4ab21, label %dec_label_pc_4ab1c

dec_label_pc_4ab1c:                               ; preds = %dec_label_pc_4ab00
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4ab21

dec_label_pc_4ab21:                               ; preds = %dec_label_pc_4ab1c, %dec_label_pc_4ab00
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

