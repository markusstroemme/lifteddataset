@global_var_abef0 = external constant [36 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_abec8 = external constant [3 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37a49:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_dc090, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_abec8)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  %8 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %7, label %dec_label_pc_37ba9, label %dec_label_pc_37ae8

dec_label_pc_37ae8:                               ; preds = %dec_label_pc_37a49, %dec_label_pc_37ae8
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %9 = mul i64 %indvars.iv9.reload, 4
  %10 = add i64 %9, %8
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_37b67, label %dec_label_pc_37ae8

dec_label_pc_37b67:                               ; preds = %dec_label_pc_37ae8
  call void @printLine(ptr @global_var_abef0)
  %12 = icmp eq i64 %8, 0
  br i1 %12, label %dec_label_pc_37c4a, label %dec_label_pc_37b81

dec_label_pc_37b81:                               ; preds = %dec_label_pc_37b67
  %13 = inttoptr i64 %8 to ptr
  %constexpr = and i64 ptrtoint (ptr @global_var_abec8 to i64), 4294967295
  %constexpr1 = inttoptr i64 %constexpr to ptr
  call void @_ZdaPv(ptr %13, ptr %constexpr1)
  br label %dec_label_pc_37c4a

dec_label_pc_37ba9:                               ; preds = %dec_label_pc_37a49, %dec_label_pc_37ba9
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %8
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37c28, label %dec_label_pc_37ba9

dec_label_pc_37c28:                               ; preds = %dec_label_pc_37ba9
  call void @printLine(ptr @global_var_abef0)
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %dec_label_pc_37c4a, label %dec_label_pc_37c3e

dec_label_pc_37c3e:                               ; preds = %dec_label_pc_37c28
  %18 = inttoptr i64 %8 to ptr
  %constexpr2 = and i64 ptrtoint (ptr @global_var_abec8 to i64), 4294967295
  %constexpr3 = inttoptr i64 %constexpr2 to ptr
  call void @_ZdaPv(ptr %18, ptr %constexpr3)
  br label %dec_label_pc_37c4a

dec_label_pc_37c4a:                               ; preds = %dec_label_pc_37c3e, %dec_label_pc_37c28, %dec_label_pc_37b81, %dec_label_pc_37b67
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_37c5f, label %dec_label_pc_37c5a

dec_label_pc_37c5a:                               ; preds = %dec_label_pc_37c4a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37c5f

dec_label_pc_37c5f:                               ; preds = %dec_label_pc_37c5a, %dec_label_pc_37c4a
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

