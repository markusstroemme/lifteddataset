@global_var_72880 = external constant [4 x i8]
@global_var_72888 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_22250:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_22297, label %dec_label_pc_22269

dec_label_pc_22269:                               ; preds = %dec_label_pc_22250
  %1 = icmp sgt i16 %data, 16382
  br i1 %1, label %dec_label_pc_22288, label %dec_label_pc_22271

dec_label_pc_22271:                               ; preds = %dec_label_pc_22269
  %2 = mul i16 %data, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_22297

dec_label_pc_22288:                               ; preds = %dec_label_pc_22269
  call void @printLine(ptr @global_var_72888)
  br label %dec_label_pc_22297

dec_label_pc_22297:                               ; preds = %dec_label_pc_22288, %dec_label_pc_22271, %dec_label_pc_22250
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2229a:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72880, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_222fe, label %dec_label_pc_222f9

dec_label_pc_222f9:                               ; preds = %dec_label_pc_2229a
  call void @__stack_chk_fail()
  br label %dec_label_pc_222fe

dec_label_pc_222fe:                               ; preds = %dec_label_pc_222f9, %dec_label_pc_2229a
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

