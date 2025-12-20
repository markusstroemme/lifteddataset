@global_var_ad930 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_487e1:
  %0 = call i64 @anon1(i32 10)
  ret i64 %0
}

define i64 @anon1(i32 %arg1) local_unnamed_addr {
dec_label_pc_48855:
  %0 = call i64 @anon2(i32 %arg1)
  ret i64 %0
}

define i64 @anon2(i32 %arg1) local_unnamed_addr {
dec_label_pc_488a9:
  %0 = call i64 @anon3(i32 %arg1)
  ret i64 %0
}

define i64 @anon3(i32 %arg1) local_unnamed_addr {
dec_label_pc_488fd:
  %0 = call i64 @anon4(i32 %arg1)
  ret i64 %0
}

define i64 @anon4(i32 %arg1) local_unnamed_addr {
dec_label_pc_48a9b:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_48ac1

dec_label_pc_48ac1:                               ; preds = %dec_label_pc_48ac1, %dec_label_pc_48a9b
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %3 = mul i64 %indvars.iv5.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_48ae5, label %dec_label_pc_48ac1

dec_label_pc_48ae5:                               ; preds = %dec_label_pc_48ac1
  %6 = icmp ugt i32 %arg1, 9
  br i1 %6, label %dec_label_pc_48b3d, label %dec_label_pc_48af1

dec_label_pc_48af1:                               ; preds = %dec_label_pc_48ae5
  %7 = sext i32 %arg1 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %2, %8
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_48b14

dec_label_pc_48b14:                               ; preds = %dec_label_pc_48b14, %dec_label_pc_48af1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %2
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_48b4c, label %dec_label_pc_48b14

dec_label_pc_48b3d:                               ; preds = %dec_label_pc_48ae5
  call void @printLine(ptr @global_var_ad930)
  br label %dec_label_pc_48b4c

dec_label_pc_48b4c:                               ; preds = %dec_label_pc_48b14, %dec_label_pc_48b3d
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %dec_label_pc_48b5f, label %dec_label_pc_48b53

dec_label_pc_48b53:                               ; preds = %dec_label_pc_48b4c
  %16 = inttoptr i64 %2 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_48b5f

dec_label_pc_48b5f:                               ; preds = %dec_label_pc_48b53, %dec_label_pc_48b4c
  ret i64 ptrtoint (ptr @0 to i64)
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

