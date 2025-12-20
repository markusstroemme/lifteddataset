@global_var_75920 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_37d59:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge.in = xor i32 %8, %9
  %10 = trunc i32 %storemerge.in to i16
  %11 = icmp eq i16 %10, 32767
  br i1 %11, label %dec_label_pc_37e0c, label %dec_label_pc_37df4

dec_label_pc_37df4:                               ; preds = %dec_label_pc_37d59
  %sext3 = mul i32 %storemerge.in, 65536
  %sext = add i32 %sext3, 65536
  %12 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_37e1b

dec_label_pc_37e0c:                               ; preds = %dec_label_pc_37d59
  call void @printLine(ptr @global_var_75920)
  br label %dec_label_pc_37e1b

dec_label_pc_37e1b:                               ; preds = %dec_label_pc_37e0c, %dec_label_pc_37df4
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_37e30, label %dec_label_pc_37e2b

dec_label_pc_37e2b:                               ; preds = %dec_label_pc_37e1b
  call void @__stack_chk_fail()
  br label %dec_label_pc_37e30

dec_label_pc_37e30:                               ; preds = %dec_label_pc_37e2b, %dec_label_pc_37e1b
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

