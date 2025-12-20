@global_var_75208 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_342e7:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 32767, ptr %stack_var_-18, align 2
  call void @anon0(ptr nonnull %stack_var_-18)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_3432f, label %dec_label_pc_3432a

dec_label_pc_3432a:                               ; preds = %dec_label_pc_342e7
  call void @__stack_chk_fail()
  br label %dec_label_pc_3432f

dec_label_pc_3432f:                               ; preds = %dec_label_pc_3432a, %dec_label_pc_342e7
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_343c0:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = sub i16 0, %2
  %4 = icmp slt i16 %3, 0
  %5 = icmp eq i1 %4, false
  %.v = select i1 %5, i16 %3, i16 %2
  %6 = icmp ult i16 %.v, 182
  br i1 %6, label %dec_label_pc_343ed, label %dec_label_pc_34409

dec_label_pc_343ed:                               ; preds = %dec_label_pc_343c0
  %7 = trunc i64 %1 to i32
  %8 = urem i32 %7, 65536
  %narrow = mul i32 %8, 65536
  %sext = mul i32 %narrow, %8
  %9 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_34418

dec_label_pc_34409:                               ; preds = %dec_label_pc_343c0
  call void @printLine(ptr @global_var_75208)
  br label %dec_label_pc_34418

dec_label_pc_34418:                               ; preds = %dec_label_pc_34409, %dec_label_pc_343ed
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

