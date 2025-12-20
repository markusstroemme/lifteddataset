@global_var_75c30 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3989a:
  %stack_var_-42 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-42 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_39925, label %dec_label_pc_39920

dec_label_pc_39920:                               ; preds = %dec_label_pc_3989a
  call void @__stack_chk_fail()
  br label %dec_label_pc_39925

dec_label_pc_39925:                               ; preds = %dec_label_pc_39920, %dec_label_pc_3989a
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_399b4:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_399f0, label %dec_label_pc_399d8

dec_label_pc_399d8:                               ; preds = %dec_label_pc_399b4
  %5 = zext i16 %3 to i32
  %6 = mul i32 %5, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_399ff

dec_label_pc_399f0:                               ; preds = %dec_label_pc_399b4
  call void @printLine(ptr @global_var_75c30)
  br label %dec_label_pc_399ff

dec_label_pc_399ff:                               ; preds = %dec_label_pc_399f0, %dec_label_pc_399d8
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

