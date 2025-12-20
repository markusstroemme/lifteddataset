@0 = external global i32
@global_var_dc270 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7c40d:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem3 = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-48 = alloca ptr, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load ptr, ptr @global_var_dc270, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = bitcast ptr %stack_var_-48 to ptr
  store i64 %4, ptr %5, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %6 = bitcast ptr %stack_var_-27 to ptr
  %7 = call i32 @strlen(ptr nonnull %6)
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, 1
  %10 = icmp eq i64 %9, 0
  store ptr %3, ptr %.reg2mem3, align 8
  br i1 %10, label %dec_label_pc_7c493, label %dec_label_pc_7c465.lr.ph

dec_label_pc_7c465.lr.ph:                         ; preds = %dec_label_pc_7c40d
  %11 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  store ptr %3, ptr %.reg2mem, align 8
  br label %dec_label_pc_7c465

dec_label_pc_7c465:                               ; preds = %dec_label_pc_7c465, %dec_label_pc_7c465.lr.ph
  %.reload = load ptr, ptr %.reg2mem, align 8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = ptrtoint ptr %.reload to i64
  %13 = add i64 %storemerge2.reload, %12
  %14 = add i64 %storemerge2.reload, %11
  %15 = inttoptr i64 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = inttoptr i64 %13 to ptr
  store i8 %16, ptr %17, align 1
  %18 = add nuw i64 %storemerge2.reload, 1
  %.pr = load ptr, ptr %stack_var_-48, align 8
  %exitcond = icmp eq i64 %18, %9
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  store ptr %.pr, ptr %.reg2mem, align 8
  store ptr %.pr, ptr %.reg2mem3, align 8
  br i1 %exitcond, label %dec_label_pc_7c493, label %dec_label_pc_7c465

dec_label_pc_7c493:                               ; preds = %dec_label_pc_7c465, %dec_label_pc_7c40d
  %.reload4 = load ptr, ptr %.reg2mem3, align 8
  call void @printLine(ptr %.reload4)
  %19 = icmp eq ptr %.reload4, null
  br i1 %19, label %dec_label_pc_7c4b2, label %dec_label_pc_7c4a6

dec_label_pc_7c4a6:                               ; preds = %dec_label_pc_7c493
  %20 = bitcast ptr %.reload4 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_7c4b2

dec_label_pc_7c4b2:                               ; preds = %dec_label_pc_7c4a6, %dec_label_pc_7c493
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %2, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_7c4c7, label %dec_label_pc_7c4c2

dec_label_pc_7c4c2:                               ; preds = %dec_label_pc_7c4b2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7c4c7

dec_label_pc_7c4c7:                               ; preds = %dec_label_pc_7c4c2, %dec_label_pc_7c4b2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_7c4c9:
  %0 = call i64 @_Znam(i64 11)
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr @global_var_dc270, align 8
  %2 = call i64 @anon0()
  ret i64 %2
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

