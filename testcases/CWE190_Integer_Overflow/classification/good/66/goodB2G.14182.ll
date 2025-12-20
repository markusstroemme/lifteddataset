@global_var_87db0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5000e:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-40 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_5005e, label %dec_label_pc_50059

dec_label_pc_50059:                               ; preds = %dec_label_pc_5000e
  call void @__stack_chk_fail()
  br label %dec_label_pc_5005e

dec_label_pc_5005e:                               ; preds = %dec_label_pc_50059, %dec_label_pc_5000e
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_500df:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %.off = add i32 %4, 46339
  %5 = icmp ugt i32 %.off, 92678
  br i1 %5, label %dec_label_pc_50129, label %dec_label_pc_50114

dec_label_pc_50114:                               ; preds = %dec_label_pc_500df
  %6 = mul i32 %4, %4
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_50139

dec_label_pc_50129:                               ; preds = %dec_label_pc_500df
  call void @printLine(ptr @global_var_87db0)
  br label %dec_label_pc_50139

dec_label_pc_50139:                               ; preds = %dec_label_pc_50129, %dec_label_pc_50114
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

