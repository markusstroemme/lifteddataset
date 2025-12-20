@global_var_ac148 = external constant [3 x i8]
@global_var_ac14b = external constant [21 x i8]
@global_var_ac160 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_dc124 = external local_unnamed_addr global i32

define i64 @anon0(i32 %arg1) local_unnamed_addr {
dec_label_pc_398fa:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc124, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_39927, label %dec_label_pc_39913

dec_label_pc_39913:                               ; preds = %dec_label_pc_398fa
  call void @printLine(ptr @global_var_ac14b)
  br label %dec_label_pc_399dc

dec_label_pc_39927:                               ; preds = %dec_label_pc_398fa
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_3993e

dec_label_pc_3993e:                               ; preds = %dec_label_pc_3993e, %dec_label_pc_39927
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_39962, label %dec_label_pc_3993e

dec_label_pc_39962:                               ; preds = %dec_label_pc_3993e
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_399ba, label %dec_label_pc_3996e

dec_label_pc_3996e:                               ; preds = %dec_label_pc_39962
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_39991

dec_label_pc_39991:                               ; preds = %dec_label_pc_39991, %dec_label_pc_3996e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_399c9, label %dec_label_pc_39991

dec_label_pc_399ba:                               ; preds = %dec_label_pc_39962
  call void @printLine(ptr @global_var_ac160)
  br label %dec_label_pc_399c9

dec_label_pc_399c9:                               ; preds = %dec_label_pc_39991, %dec_label_pc_399ba
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_399dc, label %dec_label_pc_399d0

dec_label_pc_399d0:                               ; preds = %dec_label_pc_399c9
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_399dc

dec_label_pc_399dc:                               ; preds = %dec_label_pc_399d0, %dec_label_pc_399c9, %dec_label_pc_39913
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_399df:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_ac148, ptr nonnull %stack_var_-20)
  store i32 0, ptr @global_var_dc124, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  %4 = call i64 @anon0(i32 %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_39a4c, label %dec_label_pc_39a47

dec_label_pc_39a47:                               ; preds = %dec_label_pc_399df
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39a4c

dec_label_pc_39a4c:                               ; preds = %dec_label_pc_39a47, %dec_label_pc_399df
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

