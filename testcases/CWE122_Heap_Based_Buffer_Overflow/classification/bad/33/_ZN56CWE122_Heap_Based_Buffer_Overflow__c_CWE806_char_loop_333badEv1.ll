@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2bbb8:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2bbfc, label %dec_label_pc_2bbf2

dec_label_pc_2bbf2:                               ; preds = %dec_label_pc_2bbb8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2bbfc:                               ; preds = %dec_label_pc_2bbb8
  %4 = ptrtoint ptr %1 to i64
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %4, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_2bca2, label %dec_label_pc_2bc78.lr.ph

dec_label_pc_2bc78.lr.ph:                         ; preds = %dec_label_pc_2bbfc
  %11 = sext i32 %9 to i64
  %12 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2bc78

dec_label_pc_2bc78:                               ; preds = %dec_label_pc_2bc78.lr.ph, %dec_label_pc_2bc78
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %13 = add i64 %storemerge2.reload, %4
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i64 %storemerge2.reload, %12
  %17 = inttoptr i64 %16 to ptr
  store i8 %15, ptr %17, align 1
  %18 = add nuw i64 %storemerge2.reload, 1
  %19 = icmp ult i64 %18, %11
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %19, label %dec_label_pc_2bc78, label %dec_label_pc_2bca2

dec_label_pc_2bca2:                               ; preds = %dec_label_pc_2bc78, %dec_label_pc_2bbfc
  call void @printLine(ptr %8)
  call void @free(ptr %1)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_2bcd3, label %dec_label_pc_2bcce

dec_label_pc_2bcce:                               ; preds = %dec_label_pc_2bca2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2bcd3

dec_label_pc_2bcd3:                               ; preds = %dec_label_pc_2bcce, %dec_label_pc_2bca2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

