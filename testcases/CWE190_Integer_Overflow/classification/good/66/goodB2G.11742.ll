@global_var_752b0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_34804:
  %stack_var_-26 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-26 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_34854, label %dec_label_pc_3484f

dec_label_pc_3484f:                               ; preds = %dec_label_pc_34804
  call void @__stack_chk_fail()
  br label %dec_label_pc_34854

dec_label_pc_34854:                               ; preds = %dec_label_pc_3484f, %dec_label_pc_34804
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_348e7:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = sub i16 0, %3
  %5 = icmp slt i16 %4, 0
  %6 = icmp eq i1 %5, false
  %.v = select i1 %6, i16 %4, i16 %3
  %7 = icmp ult i16 %.v, 182
  br i1 %7, label %dec_label_pc_34915, label %dec_label_pc_34931

dec_label_pc_34915:                               ; preds = %dec_label_pc_348e7
  %8 = zext i16 %3 to i32
  %narrow = mul i32 %8, 65536
  %sext = mul i32 %narrow, %8
  %9 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_34940

dec_label_pc_34931:                               ; preds = %dec_label_pc_348e7
  call void @printLine(ptr @global_var_752b0)
  br label %dec_label_pc_34940

dec_label_pc_34940:                               ; preds = %dec_label_pc_34931, %dec_label_pc_34915
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

