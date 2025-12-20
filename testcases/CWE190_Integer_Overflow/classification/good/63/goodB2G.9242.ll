@global_var_73f08 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2c5db:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 32767, ptr %stack_var_-18, align 2
  call void @anon0(ptr nonnull %stack_var_-18)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_2c623, label %dec_label_pc_2c61e

dec_label_pc_2c61e:                               ; preds = %dec_label_pc_2c5db
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c623

dec_label_pc_2c623:                               ; preds = %dec_label_pc_2c61e, %dec_label_pc_2c5db
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_2c6ac:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp eq i16 %2, 32767
  br i1 %3, label %dec_label_pc_2c6e7, label %dec_label_pc_2c6cf

dec_label_pc_2c6cf:                               ; preds = %dec_label_pc_2c6ac
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 65536
  %sext = add i32 %5, 65536
  %6 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_2c6f6

dec_label_pc_2c6e7:                               ; preds = %dec_label_pc_2c6ac
  call void @printLine(ptr @global_var_73f08)
  br label %dec_label_pc_2c6f6

dec_label_pc_2c6f6:                               ; preds = %dec_label_pc_2c6e7, %dec_label_pc_2c6cf
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

