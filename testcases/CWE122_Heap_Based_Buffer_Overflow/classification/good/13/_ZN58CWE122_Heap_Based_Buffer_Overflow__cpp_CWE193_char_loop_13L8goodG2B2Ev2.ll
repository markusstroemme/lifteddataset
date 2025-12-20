@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7a2f0:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 11)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %dec_label_pc_7a38c, label %dec_label_pc_7a35e.lr.ph

dec_label_pc_7a35e.lr.ph:                         ; preds = %dec_label_pc_7a2f0
  %9 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7a35e

dec_label_pc_7a35e:                               ; preds = %dec_label_pc_7a35e, %dec_label_pc_7a35e.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %10 = add i64 %storemerge2.reload, %3
  %11 = add i64 %storemerge2.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %15, %7
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7a38c, label %dec_label_pc_7a35e

dec_label_pc_7a38c:                               ; preds = %dec_label_pc_7a35e, %dec_label_pc_7a2f0
  %16 = inttoptr i64 %3 to ptr
  call void @printLine(ptr %16)
  %17 = icmp eq i64 %3, 0
  br i1 %17, label %dec_label_pc_7a3ab, label %dec_label_pc_7a39f

dec_label_pc_7a39f:                               ; preds = %dec_label_pc_7a38c
  %18 = inttoptr i64 %3 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_7a3ab

dec_label_pc_7a3ab:                               ; preds = %dec_label_pc_7a39f, %dec_label_pc_7a38c
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %2, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_7a3c0, label %dec_label_pc_7a3bb

dec_label_pc_7a3bb:                               ; preds = %dec_label_pc_7a3ab
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7a3c0

dec_label_pc_7a3c0:                               ; preds = %dec_label_pc_7a3bb, %dec_label_pc_7a3ab
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

