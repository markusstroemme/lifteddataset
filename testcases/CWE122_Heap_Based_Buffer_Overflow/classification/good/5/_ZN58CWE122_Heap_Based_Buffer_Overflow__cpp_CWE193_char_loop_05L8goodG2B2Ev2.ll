@0 = external global i32
@global_var_dc060 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_78edb:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-56.0.reg2mem = alloca ptr, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_dc060, align 4
  %4 = icmp eq i32 %3, 0
  store ptr null, ptr %stack_var_-56.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_78f16, label %dec_label_pc_78f08

dec_label_pc_78f08:                               ; preds = %dec_label_pc_78edb
  %5 = call i64 @_Znam(i64 11)
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %stack_var_-56.0.reg2mem, align 8
  br label %dec_label_pc_78f16

dec_label_pc_78f16:                               ; preds = %dec_label_pc_78f08, %dec_label_pc_78edb
  %stack_var_-56.0.reload = load ptr, ptr %stack_var_-56.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %dec_label_pc_78f76, label %dec_label_pc_78f48.lr.ph

dec_label_pc_78f48.lr.ph:                         ; preds = %dec_label_pc_78f16
  %12 = ptrtoint ptr %stack_var_-56.0.reload to i64
  %13 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_78f48

dec_label_pc_78f48:                               ; preds = %dec_label_pc_78f48, %dec_label_pc_78f48.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %14 = add i64 %storemerge2.reload, %12
  %15 = add i64 %storemerge2.reload, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = inttoptr i64 %14 to ptr
  store i8 %17, ptr %18, align 1
  %19 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %19, %10
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_78f76, label %dec_label_pc_78f48

dec_label_pc_78f76:                               ; preds = %dec_label_pc_78f48, %dec_label_pc_78f16
  call void @printLine(ptr %stack_var_-56.0.reload)
  %20 = icmp eq ptr %stack_var_-56.0.reload, null
  br i1 %20, label %dec_label_pc_78f95, label %dec_label_pc_78f89

dec_label_pc_78f89:                               ; preds = %dec_label_pc_78f76
  %21 = bitcast ptr %stack_var_-56.0.reload to ptr
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  br label %dec_label_pc_78f95

dec_label_pc_78f95:                               ; preds = %dec_label_pc_78f89, %dec_label_pc_78f76
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %2, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_78faa, label %dec_label_pc_78fa5

dec_label_pc_78fa5:                               ; preds = %dec_label_pc_78f95
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_78faa

dec_label_pc_78faa:                               ; preds = %dec_label_pc_78fa5, %dec_label_pc_78f95
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

