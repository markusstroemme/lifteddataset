@global_var_b0e3b = external constant [21 x i8]
@0 = external global i32
@global_var_dc250 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_7aee5:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_dc250, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_7af10, label %dec_label_pc_7aeff

dec_label_pc_7aeff:                               ; preds = %dec_label_pc_7aee5
  call void @printLine(ptr @global_var_b0e3b)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_7af1e

dec_label_pc_7af10:                               ; preds = %dec_label_pc_7aee5
  %2 = call i64 @_Znam(i64 11)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_7af1e

dec_label_pc_7af1e:                               ; preds = %dec_label_pc_7af10, %dec_label_pc_7aeff
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_7af24:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_dc250, align 4
  %3 = call i64 @anon0(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %dec_label_pc_7afc1, label %dec_label_pc_7af93.lr.ph

dec_label_pc_7af93.lr.ph:                         ; preds = %dec_label_pc_7af24
  %9 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7af93

dec_label_pc_7af93:                               ; preds = %dec_label_pc_7af93, %dec_label_pc_7af93.lr.ph
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
  br i1 %exitcond, label %dec_label_pc_7afc1, label %dec_label_pc_7af93

dec_label_pc_7afc1:                               ; preds = %dec_label_pc_7af93, %dec_label_pc_7af24
  %16 = inttoptr i64 %3 to ptr
  call void @printLine(ptr %16)
  %17 = icmp eq i64 %3, 0
  br i1 %17, label %dec_label_pc_7afe0, label %dec_label_pc_7afd4

dec_label_pc_7afd4:                               ; preds = %dec_label_pc_7afc1
  %18 = inttoptr i64 %3 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_7afe0

dec_label_pc_7afe0:                               ; preds = %dec_label_pc_7afd4, %dec_label_pc_7afc1
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %2, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_7aff5, label %dec_label_pc_7aff0

dec_label_pc_7aff0:                               ; preds = %dec_label_pc_7afe0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7aff5

dec_label_pc_7aff5:                               ; preds = %dec_label_pc_7aff0, %dec_label_pc_7afe0
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

